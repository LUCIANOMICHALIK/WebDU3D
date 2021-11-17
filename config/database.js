const mysql2 = require('mysql2')

const DBconection = mysql2.createConnection({ //Creo la conexion a la DB
    host: 'localhost', //ya que mi base de datos esta en mi pc
    user: 'root', //Esto sale del phpmyAdmin donde dice "Servidor de base de datos -> usuarios"
    database: 'du3d'
});

DBconection.connect((error)=>{ //
    if(error)
        console.log(error)
    else    
        console.log("servidor conectado a la DB")
})


module.exports = DBconection //Con esto habilitamos a que desde otro lado se pueda acceder a la variable DBconection