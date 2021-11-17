const express = require('express')
const {idx,contactUs, login, register} = require('../controllers/indexControllers')
const sendAnEmail = require('../controllers/mailerController')
const {prodHogar,prodNav,prodFan} = require('../controllers/productsControllers')
const indexRoutes = express.Router()

indexRoutes.get("/",idx)
indexRoutes.get("/hogar",prodHogar)
indexRoutes.get("/nav",prodNav)
indexRoutes.get("/fans",prodFan)
indexRoutes.get("/contact",contactUs)
indexRoutes.get("/login",login)
indexRoutes.get("/register",register)


indexRoutes.post("/",sendAnEmail)

// indexRoutes.post("/contact",sendConsulta)





module.exports = indexRoutes  