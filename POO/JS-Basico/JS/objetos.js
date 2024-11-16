
/*let elementos={
    nombre:"sonia",
    edad:20,
    grupo:"5423IS",
    escuela:"universidad politecnica de tecamac"

};
console.log(elementos.nombre);*/

let alumnos=[
    { 
    nombre:"Sonia",
    edad:20,
    grupo:"5423IS",
    escuela:"universidad politecnica de tecamac1"
    },
    {
        nombre:"Nefta",
        edad:20,
        grupo:"5423IS",
        escuela:"universidad politecnica de tecamac2"
    },
    {
        nombre:"Diego",
        edad:19,
        grupo:"5423IS",
        escuela:"universidad politecnica de tecamac3"
    },
    {
        nombre:"Rodri",
        edad:19,
        grupo:"5423IS",
        escuela:"universidad politecnica de tecamac4"
    }
];
//console.log (alumnos[2].nombre);
alumnos.forEach(e=>  console.log(`nombre:${e.nombre}`));
