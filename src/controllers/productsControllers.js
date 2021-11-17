const DBconection = require("../../config/database")


// const prodHogar = (req, res) => {
//     //res.send("Esta funcion devuelve el producto requerido")
//     res.render('pages/productsHogar')
// }


const prodHogar = (req, res) => { //MANEJO DE LA DB
    //res.send("Esta funcion devuelve todos los productos de la base de datos")
    DBconection.query("SELECT * FROM hogar", (err, data) => {
        if (err)
            console.log("ERROR EN LECTURA DE DB")
        else
            res.render("pages/productsHogar", {
                products: data
            })
    })

}

const prodNav = (req, res) => { //MANEJO DE LA DB
    //res.send("Esta funcion devuelve todos los productos de la base de datos")
    DBconection.query("SELECT * FROM navidad", (err, data) => {
        if (err)
            console.log("ERROR EN LECTURA DE DB")
        else
            res.render("pages/productsNav", {
                products: data
            })
    })

}

const prodFan = (req, res) => { //MANEJO DE LA DB
    //res.send("Esta funcion devuelve todos los productos de la base de datos")
    DBconection.query("SELECT * FROM fans", (err, data) => {
        if (err)
            console.log("ERROR EN LECTURA DE DB")
        else
            res.render("pages/productsFans", {
                products: data
            })
    })

}

module.exports={prodHogar,prodFan,prodNav}