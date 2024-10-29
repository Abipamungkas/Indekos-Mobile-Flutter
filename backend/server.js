const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');

const app = express();
const port = 3000;

app.use(bodyParser.json());
app.use(cors());

// Import routes dari file indekos.js
const indekosRoutes = require('./routes/indekos');

// Gunakan routes
app.use('/api/indekos', indekosRoutes);

app.listen(port, () => {
  console.log(`Server running on http://localhost:${port}`);
});
 