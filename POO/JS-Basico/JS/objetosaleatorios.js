let nombres=["sonia","neftali","jazmin","belen","diego","geovanni","rodrigo","angel","melanie","aime"];
let apellidosP=["salazar","sanchez","trujillo","sotelo","cruz","garcia","hernandez","prado","ramirez","zenil"];
let apellidosM=["montes","mandujano","martinez","flores","velazquez","zarate","santiago","cortez","perez","reyes"];
let edades=[18,17,19,20,21,22];
let grupos=["1423IS","2423IS","3423IS","4423IS","5423IS"];
let escuelas=["upt","utt","utc","ute","uvm","umb"];
let calificaciones=[7,7.5, 8,8.5, 9,9.5,10];
let genero=["masculino","femenino"];

//Funcion para tomar valores aleatorios de un arreglo
function arraysize(array){
    return Math.floor(Math.random()*array.length);
}

//Prueba de Impresion en consola con diferentes arrays
console.log(`Nombre:${nombres[arraysize(nombres)]}
Apellidos:${apellidosP[arraysize(apellidosP)]} ${apellidosM[arraysize(apellidosM)]}
Edad:${edades[arraysize(edades)]}Escuela:${escuelas[arraysize(escuelas)]}
Calificacion:${calificaciones[arraysize(calificaciones)]}`);

//Funcion loop para crear objetos con el contenido de arrays 
function crearObjetos(num){
    let objeto;
    for (let i = 0; i < num; i++) {
        objeto=
            `Nombre:${nombres[arraysize(nombres)]}
            Apellidos:${apellidosP[arraysize(apellidosP)]} ${apellidosM[arraysize(apellidosM)]}
            Edad:${edades[arraysize(edades)]}
            Escuela:${escuelas[arraysize(escuelas)]}
            Calificacion:${calificaciones[arraysize(calificaciones)]}
            Genero:${genero[arraysize(genero)]}
            Correo Electronico:${nombres[arraysize(nombres)]}_${apellidosP[arraysize(apellidosP)]}@gmail.com`
    }
    return objeto.trim();
}
console.log(crearObjetos(5));

//Muestra en el documento HTML los objetos que se generan
let datos = crearObjetos(1);
let datosObjeto=document.getElementById("datos");
datosObjeto.textContent=datos;


/*for (let i = 0; i < 10; i++) {
    for (let j = 0; j < 1; j++) {
        for (let k = 0; k < 1; k++) {
            for (let l = 0; l < 1; l++) {
                for (let m = 0; m < 1; m++) {
                    for (let n = 0; n < 1; n++) {
                        for (let o = 0; o < 1; o++) {
                            for (let c = 0; c < 1; c++) {
                            let jn=Math.floor(Math.random()*nombres.length);
                            let kap=Math.floor(Math.random()*apellidosP.length);
                            let lam=Math.floor(Math.random()*apellidosM.length);
                            let me=Math.floor(Math.random()*edades.length);
                            let ng=Math.floor(Math.random()*grupos.length);
                            let oe=Math.floor(Math.random()*escuelas.length);
                            let ca=Math.floor(Math.random()*calificaciones.length); 
                            
                            console.log("Nombre:",nombres[jn],apellidosP[kap],apellidosM[lam],"\nedad:",edades[me],"\ngrupo:",grupos[ng],"\nescuela:",escuelas[oe],"\ncalificacion:",calificaciones[ca]);
                            }
                        }   
                    }   
                }
            }
        }
    }
}*/


//alumnos.filter(e => e.escuela === 'upt').forEach(e => console.log(`nombres:${e.nombres} ${e.apellidos}, escuela: ${e.escuela};`));

