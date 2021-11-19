const transporter = require('../../config/mailer')
const dataUsers = require("../basicUsers.json")


require('dotenv').config()



const sendAnEmail=(req,res)=>{
    const {name,contact,consulta} = req.body

    let mailOptions = {
        from:process.env.MAIL,
        to:"lucianomichalik@gmail.com",
        subject: "Consulta",
        html:"<h2> Nombre: "+name+"</h2> <h2> Contacto: "+contact+"</h2> <h4>Consulta: "+consulta+"</h4>"
    }

    transporter.sendMail(mailOptions,(error,data)=>{
        if(error){
            console.log("Se produjo un error en el envio del mail")
            console.log(error)
        }
        else
            res.render('pages/index',{data:dataUsers})
    })
}

module.exports = sendAnEmail;