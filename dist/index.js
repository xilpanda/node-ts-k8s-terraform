"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const app = (0, express_1.default)();
const PORT = process.env.PORT || 4000;
// Health-check ruta
app.get('/health', (req, res) => {
    res.send('API is running!');
});
// About ruta
app.get('/about', (req, res) => {
    res.send('This is an example API created with TypeScript!');
});
// Pokretanje servera
app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});
