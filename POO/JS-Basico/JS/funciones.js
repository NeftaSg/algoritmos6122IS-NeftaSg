function enviarMensaje(){
    console.log("Mensaje Enviado");
}
enviarMensaje();

function enviarMensaje2(){
    return "Mensaje Enviado :)";
}

let mensaje=enviarMensaje2();
console.log(mensaje);

function  enviarMensaje3(nombre){
    //return "Mensaje para "+ nombre;
    return `Mensaje para ${nombre}`;
}
let ms = enviarMensaje3("Usuario");
console.log(ms);

let enviarMensaje4 = function(){
    console.log("Mensaje EnviadooO");
}
enviarMensaje4();

let mensaje5 = function (nombre){
    return `mensaje enviado para, ${nombre}`;
}
console.log(mensaje5("usuario"));

function sumar(n1=4,n2=4){
    console.log(n1+n2);
}
sumar();

function restar(n1=4,n2=4){
    console.log(n1-n2);
}
restar();

function multiplicar(n1=4,n2=4){
    console.log(n1*n2);
}
multiplicar();

function dividir(n1=4,n2=4){
    console.log(n1/n2);
}
dividir();

//FUNCIONES NORMALES
function sumar2(n1,n2){
    return n1+n2;
}
let ss=sumar2(4,4);
console.log(ss);

function restar2(n1,n2){
    return n1-n2;
}
let rr=restar2(4,4);
console.log(rr);

function multiplicar2(n1,n2){
    return n1*n2;
}
let mm=multiplicar2(4,4);
console.log(mm);

function dividir2(n1,n2){
    return n1/n2;
}
let dd=dividir2(4,4);
console.log(dd);

//FUNCIONES ANONIMAS
let sumar3 = function(n1,n2){
    return n1 + n2;
}
console.log(sumar3(4,4));

let restar3 = function(n1,n2){
    return n1 - n2;
}
console.log(restar3(4,4));

let multiplicar3 = function(n1,n2){
    return n1 * n2;
}
console.log(multiplicar3(4,4));

let dividir3 = function(n1,n2){
    return n1/n2;
}
console.log(dividir3(4,4));


