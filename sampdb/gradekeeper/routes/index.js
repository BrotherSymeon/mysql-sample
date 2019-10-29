var express = require('express');
var router = express.Router();
var db = require('./db');



/* GET home page. */
router.get('/', function(req, res, next) {
  db.students().then((data) => {
    
    res.render('index', { title: 'Express', data: data });
  }).catch((err) => {
    console.log(err)
    res.sendStatus(500).send(err.message)
  })

  
});

module.exports = router;
