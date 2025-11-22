const express = require('express');
const path = require('path');
const app = express();
const PORT = 80;

// --- Middleware Setup ---
app.use(express.json());

// --- Serve Website ---
app.use(express.static(path.join(__dirname)));

// --- Server Start ---
app.listen(PORT, () => {
    console.log(`
        Server is running on: http://localhost:${PORT}
    `);
});
