const app = require('express')();
const morgan = require('morgan');

require('dotenv').config();
app.use(morgan('tiny'))

app.get('/', (req, res) => {
  res.send('App running...');
});

module.exports = app;