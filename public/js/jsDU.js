// const DBconection = require("../../config/database")

function userIN(){
    let usuario = document.querySelector("#ingresoDatos")
    let pass = document.querySelector("#ingresoPass")
    
    if(usuario.value != "" && pass.value != ""){
        location.href= '/'
    }
    else{
        usuario.value = ""
        pass.value = ""
        window.alert("Debe ingresar un usuario y contraseña")
        
    }
}

const registerIN = (req,res) => {
    
    let user = document.querySelector("#registerUser")
    let pass = document.querySelector("#passNewUser")
    let pass2 = document.querySelector("#pass2NewUser")

    if(pass.value != pass2.value)
    {
        window.alert("Contraseñas distintas")
    }
    else
    {
        if(user.value != "" && pass.value != ""){
            
            DBconection.query("INSERT INTO usuarios (user, password) VALUES (?,?)",["ASD","ASDD"], (err, data) => {
                if (err){
                    console.log("ERROR EN ESCRITURA DE DB")
                    console.log(err)
                }
                else
                    location.href= '/'

            })
        }
        else{
            user.value = ""
            pass.value = ""
            window.alert("Debe ingresar un usuario y contraseña")
            
        }
    }

    // console.log(usuario)
}

