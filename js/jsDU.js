
function userIN(){
    let usuario = document.querySelector("#ingresoDatos")
    let pass = document.querySelector("#ingresoPass")
    
    if(usuario.value != "" && pass.value != ""){
        location.href= 'index.html'
    }
    else{
        usuario.value = ""
        pass.value = ""
        window.alert("Debe ingresar un usuario y contraseña")
        
    }
}

function registerIN(){
    let user = document.querySelector(".registerUser")
    let pass = document.querySelector(".passNewUser")
    let pass2 = document.querySelector(".pass2NewUser")

    if(pass.value != pass2.value){
        window.alert("Contraseñas distintas")
    }
    else{
        if(user.value != "" && pass.value != ""){
            location.href= 'index.html'
        }
        else{
            user.value = ""
            pass.value = ""
            window.alert("Debe ingresar un usuario y contraseña")
            
        }
    }

    console.log(usuario)
}

