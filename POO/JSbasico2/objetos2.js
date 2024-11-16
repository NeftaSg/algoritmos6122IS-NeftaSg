let nombre = ["Pedro","Carlos","Juanito","Pepito","Jorgito","Jesus","Daniel","Simon","Alvin","Dewey"];
let apellido_pa = ["Soto","Tapia","Velazquez","Valadez","Salvador","Servin","Viveros", "Santos","Santiago","Sanchez"];
let apellido_ma = ["Saucedo","Flores","García","Navarro","Luz","Alvarez","Germán","García","Cruz","Martínez"];
let edad = [18,21,20,18,20,23,19,19,20,20];
let grupo = ["5123IS","5223IS","5323IS","5423IS","5523IS","5623IS","5723IS","5823IS","5923IS","6023IS"];
let escuela = ["UAM","UTEC","UAT","UPEM","UAEH","TEC","UNITEC","UNAM","IPN","UPT"];
let sexo = ["masculino","femenino"];
let correo = ["pedroeschido@hotmail.com","carlitos@gmail.com","juanperez@gmail.com","primopepe@yahoo.com","leserdemun@hotmail.com","beatlemaniaco@gmail.com","spidermaniaco@gmail.com","fifaeschido@hotmail.com","papeleriasantos@gmail.com","saimongaymer777kirby@yahoo.com"];

function obtenerCalificacion(calificacion){
    for (let i=0 ; i <= calificacion ; i++){
        
    }
}

function arraysixe(array){
   return Math.floor(Math.random()*array.length);
}

    function crearObjetos(numero){
        let objeto;
        for (let i=0; i <= numero; i++){
            objeto += `
            {
                NOMBRE: "${nombre[arraysixe(nombre)]}",
                APELLIDO_PATERNO: "${apellido_pa[arraysixe(apellido_pa)]}",
                APELLIDO_MATERNO: "${apellido_ma[arraysixe(apellido_ma)]}",
                EDAD: "${edad[arraysixe(edad)]}",
                GRUPO: "${Math.floor(Math.random()*18+1)}23IS",
                ESCUELA: "${escuela[arraysixe(escuela)]}"
            },`;
        }
        return objeto.trim();
    }

    console.log(crearObjetos(100));





  
  