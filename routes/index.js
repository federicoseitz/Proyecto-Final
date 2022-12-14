var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');
var novedadesModel = require('../modules/novedadesModel');
var cloudinary = require('cloudinary').v2;

/* GET home page. */
router.get('/', async function(req, res, next) {

    novedades = await novedadesModel.getNovedades(); 
    novedades = novedades.splice(0,5);
    novedades = novedades.map(novedad => {
      if (novedad.img_id) {
        const imagen = cloudinary.url(novedad.img_id, {
          widht: 460,
          crop: 'fill'
        });
        return {
          ...novedad,
          imagen
        }
      } else {
        return {
          ...novedad,
          imagen: '/images/imagen-no-disponible.jpg'
        }
      }
    });

  res.render('index', {
    novedades
  });
});

router.post('/', async (req, res, next) => {

var nombre = req.body.nombre;
var apellido = req.body.apellido;
var email = req.body.email; 
var telefono = req.body.telefono;
var mensaje = req.body.mensaje;
//console.log(req.body)

var obj = {
  to: 'federico.seitz@gmail.com',
  subject: 'CONTACTO WEB',
  html: nombre + " " + apellido + " se contacto a travez de la web y quiere mas informacion a este correo : " + email + ". <br> Ademas, hizo este comentario : " + mensaje + ". <br> Su telefono es : " + telefono
} //cierra obj

var transporter = nodemailer.createTransport({
  host : process.env.SMTP_HOST,
  port : process.env.SMTP_PORT,
  auth: {
      user : process.env.SMTP_USER,
      pass : process.env.SMTP_PASS

  }
}) //cierra transporter


var info = await transporter.sendMail(obj);

//res.render('index', {
  //message: 'Mensaje enviado correctamente'
//});

res.json({
  message: 'Mensaje enviado correctamente',
});

}); //cierra peticion del post

module.exports = router;
