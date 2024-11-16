function OperacionesBasicas(){
    let lsuma = document.getElementById("lsuma");
    let lresta = document.getElementById("lresta");
    let lmulti = document.getElementById("lmulti");
    let ldiv = document.getElementById("ldiv");

    for (let i = 1; i <= 10; i++) {
        // suma: 6 + i
        let suma = 6 + i;
        let sumaItem = document.createElement("li");
        sumaItem.textContent = `6 + ${i} = ${suma}`;
        lsuma.appendChild(sumaItem);

        // resta: 6 - i
        let resta = 6 - i;
        let restaItem = document.createElement("li");
        restaItem.textContent = `6 - ${i} = ${resta}`;
        lresta.appendChild(restaItem);

        // multiplicacion: 6 × i
        let multi = 6 * i;
        let multiItem = document.createElement("li");
        multiItem.textContent = `6 × ${i} = ${multi}`;
        lmulti.appendChild(multiItem);

        // division: 6 ÷ i
        let div = 6 / i;
        let divItem = document.createElement("li");
        divItem.textContent = `6 ÷ ${i} = ${div}`;
        ldiv.appendChild(divItem);
    }
}

OperacionesBasicas();



