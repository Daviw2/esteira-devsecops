const express = require('express');
const helmet = require('helmet');

const app = express();
app.use(helmet());
app.disable('x-powered-by');

app.get('/', (req, res) => {
  res.json({ status: 'ok', message: 'API segura rodando!' });
});

app.get('/health', (req, res) => {
  res.status(200).json({ status: 'healthy' });
});

app.listen(3000, () => {
  console.log('Servidor rodando na porta 3000');
});
const AWS_ACCESS_KEY_ID = "AKIAIMNOJVGFDXXXE4OA";