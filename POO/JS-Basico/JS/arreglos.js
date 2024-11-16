let frutas=['Naranja','Papaya','Mango','Sandia'];
frutas.push('Limon','Fresa','Mandarina','Guayaba','Pera','Uva');
frutas.unshift('Durazno','Melon','Platano');
console.log(frutas[7]);

/*for (let i = 0; i < frutas.length; i++) {
    console.log(`Fruta: ${frutas[i]}`);
}

for (let i = 0; i < frutas.length; i++) {
    let fruta = frutas[i+1];
}
console.log(frutas);

for(f of frutas){
    console.log(`Fruta: ${f}`);
}*/

//frutas.forEach(e => console.log(`Frutas: ${e}`)); //forEach solo funciona con Arrays

function ImprimirFrutas(frutas){
    frutas=['Mandarina'];
    console.log(frutas);
}