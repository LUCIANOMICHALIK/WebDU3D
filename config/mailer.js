require('dotenv').config()
const nodemailer = require('nodemailer');

let _user = process.env.MAIL //Gracias a dotenv puedo ocultar mi informacion
let _pass = process.env.PASSWORD

const transporter = nodemailer.createTransport({
    service:'gmail',
    auth:{
        user:_user,
        pass:_pass,
    }
})


module.exports = transporter