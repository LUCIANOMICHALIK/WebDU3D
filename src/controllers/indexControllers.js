
const idx = (req, res) => {
    res.render('pages/index')

}

const contactUs = (req, res) => {
    res.render('pages/contact')

}

const login = (req, res) => {
    res.render('pages/Login')

}

const register = (req, res) => {
    res.render('pages/Register')

}

module.exports={idx,contactUs,login,register}