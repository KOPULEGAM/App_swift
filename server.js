// server.js
const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');

const app = express();
const PORT = 3000; // You can use any available port

// Middleware
app.use(cors());
app.use(bodyParser.json());

// Define an API endpoint for addition
app.post('/add', (req, res) => {
    const { number1, number2 } = req.body;
    
    // Ensure that both inputs are valid integers
    const num1 = parseInt(number1, 10);
    const num2 = parseInt(number2, 10);

    if (isNaN(num1) || isNaN(num2)) {
        return res.status(400).json({ error: 'Invalid input. Please provide two valid integers.' });
    }

    const result = num1 + num2;
    res.json({ result });
});

// Start the server
app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});
