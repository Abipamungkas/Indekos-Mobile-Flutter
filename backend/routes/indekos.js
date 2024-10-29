const express = require('express');
const router = express.Router();

// Endpoint untuk mendapatkan data indekos
router.get('/', (req, res) => {
  const indekosList = [
    { id: 1, name: 'Kost A', location: 'Yogyakarta', price: 1500000 },
    { id: 2, name: 'Kost B', location: 'Jakarta', price: 2000000 },
  ];
  res.json(indekosList);
});

module.exports = router;