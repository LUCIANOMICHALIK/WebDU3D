const express = require("express") //Requiere me permite utilizar una libreria de terceros, en este caso express.
const app = express() //Crea una aplicacion express
const path = require("path");
const DBconection = require("../config/database");
const indexRoutes = require("./routes/indexRoutes");


DBconection.connect() //Con esto hago la conexion a la base de datos utilizando el metodo connect que realice en mi database.js

//Para que pueda interpretar los json y url
app.use(express.json())
app.use(express.urlencoded({extended:false}))

app.set('views',path.join(__dirname,'views')); //Aca digo donde van a estar las vistas
app.set('view engine','ejs'); //Aca que vamos a usar ejs
app.use(express.static(path.join(__dirname,'../public'))); //Y que los archivos estaticos van a estar en la carpeta public



app.use("/",indexRoutes)


app.listen(3000,()=>{//Le indico el puerto donde va a correr
    console.log("Aplicacion corriendo en puerto 3000")
})