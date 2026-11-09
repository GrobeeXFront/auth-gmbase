const express = require('express');
const axios = require('axios');
const crypto = require('crypto');

const app = express();
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Конфигурация
const PORT = process.env.PORT || 3000;
const BOT_TOKEN = process.env.TG_BOT_TOKEN || '';
const SITE_URL = process.env.SITE_URL || 'https://gmbase.net';

// Хранилище для polling (в реальном проекте используйте базу данных)
let updateOffset = 0;

// Инициализация бота
let botInfo = null;

async function getBotInfo() {
    if (botInfo) return botInfo;

    try {
        const response = await axios.post(`https://api.telegram.org/bot${BOT_TOKEN}/getMe`);
        botInfo = response.data.result;
        return botInfo;
    } catch (e) {
        console.error('Error getting bot info:', e.response?.data || e.message);
        return null;
    }
}

// Проверка хеша Telegram WebApp
function checkTelegramHash(data, hash) {
    if (!BOT_TOKEN || !hash) return false;

    const dataCheckString = Object.keys(data)
        .sort()
        .filter(key => key !== 'hash')
        .map(key => `${key}=${data[key]}`)
        .join('\n');

    const expectedHash = crypto
        .createHmac('sha256', BOT_TOKEN)
        .update(dataCheckString)
        .digest('hex');

    return crypto.timingSafeEqual(Buffer.from(hash), Buffer.from(expectedHash));
}

// Главная страница - заглушка с кнопкой входа
app.get('/', (req, res) => {
    res.send(`<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>🌸 Облако 🌸</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #1A2A44 0%, #0F172A 100%);
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
            color: #EFF3F8;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }
        .container {
            text-align: center;
            padding: 2rem;
            max-width: 400px;
        }
        .logo {
            font-size: 4rem;
            margin-bottom: 1rem;
        }
        h1 {
            font-size: 2rem;
            margin-bottom: 0.5rem;
            color: #FFD966;
        }
        p {
            color: #9FB3D1;
            margin-bottom: 2rem;
            line-height: 1.6;
        }
        .btn {
            display: inline-block;
            padding: 1rem 2rem;
            background: linear-gradient(135deg, #3A6EA5 0%, #1E2A44 100%);
            color: white;
            text-decoration: none;
            border-radius: 1rem;
            font-weight: 600;
            transition: transform 0.2s, box-shadow 0.2s;
            border: 2px solid #FFD966;
            box-shadow: 0 0 20px rgba(255, 217, 102, 0.3);
            margin: 0.5rem;
        }
        .btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 0 30px rgba(255, 217, 102, 0.5);
        }
        .status {
            margin-top: 2rem;
            padding: 1rem;
            border-radius: 0.5rem;
            display: none;
        }
        .status.success { background: rgba(46, 229, 154, 0.2); color: #2EE59A; }
        .status.error { background: rgba(255, 138, 122, 0.2); color: #FF8A7A; }
        .loader {
            border: 4px solid rgba(255,255,255,0.1);
            border-left-color: #FFD966;
            border-radius: 50%;
            width: 30px;
            height: 30px;
            animation: spin 1s linear infinite;
            margin: 1rem auto;
            display: none;
        }
        @keyframes spin { 100% { transform: rotate(360deg); } }
        .footer {
            margin-top: auto;
            padding: 1rem;
            color: #6F85A8;
            font-size: 0.8rem;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="logo">🌸</div>
        <h1>Облако</h1>
        <p>Безопасное VPN решение для защиты ваших данных</p>

        <a id="authBtn" class="btn" href="#">Войти в аккаунт</a>
        <div id="status" class="status"></div>
        <div id="loader" class="loader"></div>
    </div>

    <div class="footer">
        <p>© 2024 🌸 Облако 🌸</p>
    </div>

    <script>
        // Проверка, запущено ли в Telegram
        if (window.Telegram && window.Telegram.WebApp) {
            const tg = window.Telegram.WebApp;

            // Сообщаем Telegram, что приложение готово
            tg.ready();
            tg.expand();

            // Меняем цвета под тему Telegram
            tg.setHeaderColor('#0F172A');
            tg.setBackgroundColor('#0F172A');

            const authBtn = document.getElementById('authBtn');
            const status = document.getElementById('status');
            const loader = document.getElementById('loader');

            // Если есть данные пользователя - сразу авторизуем
            if (tg.initDataUnsafe && tg.initDataUnsafe.user) {
                status.className = 'status success';
                status.style.display = 'block';
                loader.style.display = 'block';
                authBtn.style.display = 'none';

                const user = tg.initDataUnsafe.user;

                // Отправляем данные на сервер
                fetch('/api/auth', {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify({
                        id: user.id,
                        first_name: user.first_name,
                        last_name: user.last_name || '',
                        username: user.username || '',
                        photo_url: user.photo_url || '',
                        auth_date: Math.floor(Date.now() / 1000)
                    })
                })
                .then(r => r.json())
                .then(data => {
                    loader.style.display = 'none';
                    if (data.success) {
                        status.innerHTML = '✅ Авторизация успешна! Перенаправление...';
                        setTimeout(() => {
                            window.location.href = data.redirect || '${SITE_URL}/dashboard.php';
                        }, 1000);
                    } else {
                        status.className = 'status error';
                        status.innerHTML = '❌ Ошибка: ' + (data.error || 'Неизвестная ошибка');
                    }
                })
                .catch(err => {
                    loader.style.display = 'none';
                    status.className = 'status error';
                    status.innerHTML = '❌ Ошибка: ' + err.message;
                });
            }

            // Клик по кнопке - открываем браузер с сайтом
            authBtn.addEventListener('click', (e) => {
                e.preventDefault();
                if (tg.initDataUnsafe && tg.initDataUnsafe.user) {
                    // Уже авторизован
                    window.location.href = '${SITE_URL}/dashboard.php';
                } else {
                    // Открываем сайт для авторизации через VK
                    tg.openLink('${SITE_URL}/login.php');
                }
            });

            // Кнопка "пополнить баланс"
            const topUpBtn = document.createElement('a');
            topUpBtn.className = 'btn';
            topUpBtn.style.background = 'linear-gradient(135deg, #2EE59A 0%, #1E4D32 100%)';
            topUpBtn.textContent = '💰 Пополнить баланс';
            topUpBtn.href = '${SITE_URL}/dashboard.php';
            topUpBtn.style.display = 'none'; // Скрыта, пока не авторизован
            document.querySelector('.container').appendChild(topUpBtn);

        } else {
            // Не в Telegram - просто показываем ссылку на сайт
            const authBtn = document.getElementById('authBtn');
            authBtn.href = '${SITE_URL}/login.php';
        }
    </script>
</body>
</html>`);
});

// API для обработки авторизации через WebApp
app.post('/api/auth', async (req, res) => {
    const { hash, id, first_name, last_name, username, photo_url, auth_date } = req.body;

    // Проверка хеша
    if (!checkTelegramHash(req.body, hash)) {
        return res.status(401).json({ success: false, error: 'Неверная подпись' });
    }

    // Проверка срока действия (10 минут)
    const now = Math.floor(Date.now() / 1000);
    if (now - (auth_date || 0) > 600) {
        return res.status(401).json({ success: false, error: 'Время авторизации истекло' });
    }

    // Проверка данных пользователя
    if (!id || !first_name) {
        return res.status(400).json({ success: false, error: 'Недостаточно данных' });
    }

    res.json({
        success: true,
        redirect: `${SITE_URL}/dashboard.php`,
        user: {
            id,
            first_name,
            last_name,
            username
        }
    });
});

// Polling - Telegram будет спрашивать об обновлениях
app.post('/poll', async (req, res) => {
    if (!BOT_TOKEN) {
        return res.status(500).json({ error: 'Bot token not configured' });
    }

    try {
        const response = await axios.post(`https://api.telegram.org/bot${BOT_TOKEN}/getUpdates`, {
            offset: updateOffset,
            timeout: 30,
            allowed_updates: ['message', 'callback_query', 'web_app_data']
        });

        const updates = response.data.result;

        if (updates && updates.length > 0) {
            updateOffset = updates[updates.length - 1].update_id + 1;

            for (const update of updates) {
                // Обработка сообщений
                if (update.message) {
                    const chatId = update.message.chat.id;
                    const text = update.message.text;

                    // Команда /start
                    if (text === '/start') {
                        const keyboard = {
                            inline_keyboard: [
                                [{
                                    text: '🌸 Войти в аккаунт',
                                    web_app: { url: `${SITE_URL}` }
                                }]
                            ]
                        };

                        await axios.post(`https://api.telegram.org/bot${BOT_TOKEN}/sendMessage`, {
                            chat_id: chatId,
                            text: 'Добро пожаловать в 🌸 Облако 🌸!\n\nНажмите кнопку ниже для входа в аккаунт.',
                            reply_markup: keyboard
                        });
                    }
                }

                // Обработка inline-кнопок
                if (update.callback_query) {
                    const chatId = update.callback_query.message.chat.id;
                    const data = update.callback_query.data;

                    if (data === 'top_up') {
                        await axios.post(`https://api.telegram.org/bot${BOT_TOKEN}/sendMessage`, {
                            chat_id: chatId,
                            text: `💰 Пополнить баланс:\n\nПерейдите по ссылке: ${SITE_URL}/dashboard.php`
                        });
                    }
                }

                // Обработка WebApp данных
                if (update.web_app_data) {
                    const chatId = update.callback_query ? update.callback_query.message.chat.id : null;
                    if (chatId) {
                        // Данные из WebApp - можно их сохранить или обработать
                        await axios.post(`https://api.telegram.org/bot${BOT_TOKEN}/sendMessage`, {
                            chat_id: chatId,
                            text: '✅ Данные получены! Перенаправляем на сайт...'
                        });
                    }
                }
            }
        }

        res.json({ ok: true, updates_count: updates ? updates.length : 0 });
    } catch (e) {
        console.error('Poll error:', e.response?.data || e.message);
        res.status(500).json({ error: e.message });
    }
});

// Старт бота
async function startBot() {
    if (!BOT_TOKEN) {
        console.warn('⚠️ TG_BOT_TOKEN не установлен. Используйте polling только для тестов.');
        console.log('💡 Для полноценной работы установите токен в .env файле');
        console.log('💡 Или используйте Replit с переменными окружения');
        return;
    }

    const bot = await getBotInfo();
    if (bot) {
        console.log(`🤖 Бот запущен: @${bot.username}`);
        console.log(`📌 SITE_URL: ${SITE_URL}`);
    }

    // Запускаем polling в фоне
    setInterval(async () => {
        try {
            if (!BOT_TOKEN) return;

            const response = await axios.post(`https://api.telegram.org/bot${BOT_TOKEN}/getUpdates`, {
                offset: updateOffset,
                timeout: 10,
                allowed_updates: ['message', 'callback_query', 'web_app_data']
            });

            const updates = response.data.result;
            if (updates && updates.length > 0) {
                updateOffset = updates[updates.length - 1].update_id + 1;

                for (const update of updates) {
                    if (update.message && update.message.text === '/start') {
                        const chatId = update.message.chat.id;

                        const keyboard = {
                            inline_keyboard: [
                                [{ text: '🌸 Войти в аккаунт', web_app: { url: `${SITE_URL}` } }]
                            ]
                        };

                        await axios.post(`https://api.telegram.org/bot${BOT_TOKEN}/sendMessage`, {
                            chat_id: chatId,
                            text: 'Добро пожаловать в 🌸 Облако 🌸!\n\nНажмите кнопку ниже для входа.',
                            reply_markup: keyboard
                        });
                    }
                }
            }
        } catch (e) {
            // Тихо игнорируем ошибки
        }
    }, 2000);
}

app.listen(PORT, () => {
    console.log(`🤖 Telegram bot запущен на порту ${PORT}`);
    console.log(`📌 SITE_URL: ${SITE_URL}`);
    startBot();
});
