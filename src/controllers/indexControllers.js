const dataUsers = require("../basicUsers.json")

const idx = (req, res) => {
    res.render('pages/index',{data:dataUsers})

}

const contactUs = (req, res) => {
    res.render('pages/contact',{data:dataUsers})

}

const login = (req, res) => {
    res.render('pages/Login',{data:dataUsers})

}

const register = (req, res) => {
    res.render('pages/Register')

}



module.exports={idx,contactUs,login,register}