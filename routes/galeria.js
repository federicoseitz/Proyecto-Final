var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');

router.get('/', function(req, res, next) {
    res.render('galeria', { title: 'Express' });
  });
  
  
  module.exports = router;



