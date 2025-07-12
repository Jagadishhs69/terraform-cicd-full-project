const express = require('express');
const { Pool } = require('pg');

const app = express();
const port = 3000;

const pool = new Pool({
  user: process.env.DB_USER,
  host: process.env.DB_HOST,
  database: 'postgres',
  password: process.env.DB_PASSWORD,
  port: 5432,
});

app.get('/', async (req, res) => {
  try {
    const result = await pool.query('SELECT NOW()');
    res.send(`Hello from Node.js! Current time from DB: ${result.rows[0].now}`);
  } catch (err) {
    res.status(500).send('Database connection error');
  }
});

app.listen(port, () => {
  console.log(`App running on port ${port}`);
});