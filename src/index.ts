import express, { Request, Response } from 'express';

const app = express();
const PORT = process.env.PORT || 4000;

// Health-check ruta
app.get('/health', (req: Request, res: Response) => {
    res.send('API is running!');
});

// About ruta
app.get('/about', (req: Request, res: Response) => {
    res.send('This is an example API created with TypeScript!');
});

// Pokretanje servera
app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});
