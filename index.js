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

// Хранилище для polling
let updateOffset = 0;

// Главная страница бота
app.get('/', (req, res) => {
    res.send(`<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Telegram Bot</title>
    <style>
        body { margin: 0; padding: 2rem; background: #0F172A; color: #EFF3F8; font-family: sans-serif; }
        .container { max-width: 500px; margin: 0 auto; text-align: center; }
        .logo { font-size: 4rem; margin-bottom: 1rem; }
        h1 { color: #FFD966; margin-bottom: 1rem; }
        p { color: #9FB3D1; line-height: 1.6; }
        .btn { display: inline-block; padding: 1rem 2rem; background: #3A6EA5; color: white; text-decoration: none; border-radius: 1rem; margin: 0.5rem; font-weight: 600; transition: 0.3s; }
        .btn:hover { background: #4A7EB5; transform: translateY(-2px); }
        .btn-green { background: #2EE59A; }
        .status { padding: 1rem; margin-top: 2rem; border-radius: 0.5rem; display: none; }
        .status.success { background: rgba(46,229,154,0.2); color: #2EE59A; }
        .status.error { background: rgba(255,138,122,0.2); color: #FF8A7A; }
    </style>
</head>
<body>
    <div class="container">
        <div class="logo">🌸</div>
        <h1>Облако</h1>
        <p>Telegram бот для доступа к сервису</p>

        <a href="${SITE_URL}/login.php" class="btn">Войти на сайт</a>
        <br>
        <a href="${SITE_URL}/login.php" class="btn btn-green">Пополнить баланс</a>

        <div id="status" class="status"></div>
    </div>

    <script>
        if (window.Telegram && window.Telegram.WebApp) {
            const tg = window.Telegram.WebApp;
            tg.ready();
            tg.expand();
            tg.setHeaderColor('#0F172A');
            tg.setBackgroundColor('#0F172A');

            document.querySelectorAll('.btn').forEach(btn => {
                btn.addEventListener('click', (e) => {
                    e.preventDefault();
                    tg.openLink(btn.href);
                });
            });
        }
    </script>
</body>
</html>`);
});

// Проверка хеша Telegram WebApp
function checkTelegramHash(data, hash) {
    if (!BOT_TOKEN || !hash) return false;
    const dataCheckString = Object.keys(data)
        .sort()
        .filter(key => key !== 'hash')
        .map(key => `${key}=${data[key]}`)
        .join('\n');
    const expectedHash = crypto.createHmac('sha256', BOT_TOKEN).update(dataCheckString).digest('hex');
    return crypto.timingSafeEqual(Buffer.from(hash), Buffer.from(expectedHash));
}

// API авторизации через WebApp
app.post('/api/auth', async (req, res) => {
    const { hash, id, first_name, last_name, username, photo_url, auth_date } = req.body;

    if (!checkTelegramHash(req.body, hash)) {
        return res.status(401).json({ success: false, error: 'Неверная подпись' });
    }

    const now = Math.floor(Date.now() / 1000);
    if (now - (auth_date || 0) > 600) {
        return res.status(401).json({ success: false, error: 'Время авторизации истекло' });
    }

    if (!id || !first_name) {
        return res.status(400).json({ success: false, error: 'Недостаточно данных' });
    }

    res.json({
        success: true,
        redirect: `${SITE_URL}/login.php`,
        user: { id, first_name, last_name, username }
    });
});

// Polling обработчик
app.post('/poll', async (req, res) => {
    if (!BOT_TOKEN) return res.status(500).json({ error: 'Bot token not configured' });

    try {
        const response = await axios.post(`https://api.telegram.org/bot${BOT_TOKEN}/getUpdates`, {
            offset: updateOffset,
            timeout: 30,
            allowed_updates: ['message', 'callback_query', 'web_app_data']
        });

        const updates = response.data.result || [];
        if (updates.length > 0) {
            updateOffset = updates[updates.length - 1].update_id + 1;

            for (const update of updates) {
                if (update.message && update.message.text === '/start') {
                    const chatId = update.message.chat.id;
                    const keyboard = {
                        inline_keyboard: [
                            [{ text: '🌸 Войти на сайт', web_app: { url: `${SITE_URL}/login.php` } }],
                            [{ text: '💰 Пополнить баланс', web_app: { url: `${SITE_URL}/login.php` } }]
                        ]
                    };
                    await axios.post(`https://api.telegram.org/bot${BOT_TOKEN}/sendMessage`, {
                        chat_id: chatId,
                        text: 'Добро пожаловать в 🌸 Облако 🌸!\n\nНажмите кнопку для входа или пополнения.',
                        reply_markup: keyboard
                    });
                }
            }
        }

        res.json({ ok: true, updates_count: updates.length });
    } catch (e) {
        console.error('Poll error:', e.response?.data || e.message);
        res.status(500).json({ error: e.message });
    }
});

// Запуск polling
setInterval(async () => {
    if (!BOT_TOKEN) return;
    try {
        const response = await axios.post(`https://api.telegram.org/bot${BOT_TOKEN}/getUpdates`, {
            offset: updateOffset,
            timeout: 10,
            allowed_updates: ['message']
        });
        const updates = response.data.result || [];
        if (updates.length > 0) {
            updateOffset = updates[updates.length - 1].update_id + 1;
            for (const update of updates) {
                if (update.message && update.message.text === '/start') {
                    const chatId = update.message.chat.id;
                    const keyboard = {
                        inline_keyboard: [
                            [{ text: '🌸 Войти на сайт', web_app: { url: `${SITE_URL}/login.php` } }],
                            [{ text: '💰 Пополнить баланс', web_app: { url: `${SITE_URL}/login.php` } }]
                        ]
                    };
                    await axios.post(`https://api.telegram.org/bot${BOT_TOKEN}/sendMessage`, {
                        chat_id: chatId,
                        text: 'Добро пожаловать в 🌸 Облако 🌸!\n\nНажмите кнопку для входа или пополнения.',
                        reply_markup: keyboard
                    });
                }
            }
        }
    } catch (e) {}
}, 2000);

app.listen(PORT, () => {
    console.log(`🤖 Telegram bot запущен на порту ${PORT}`);
    console.log(`📌 SITE_URL: ${SITE_URL}`);
    if (BOT_TOKEN) {
        console.log('✅ Bot token configured');
    } else {
        console.warn('⚠️ TG_BOT_TOKEN не установлен');
    }
});
