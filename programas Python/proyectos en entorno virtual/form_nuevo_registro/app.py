from flask import Flask, render_template,request
from data_object import DataUser

app=Flask(__name__)
@app.route("/")
def index():
    return render_template("index.html")
    
@app.route('/submit', methods=['POST'])
def submit():
    if request.method == 'POST':
        nombre=request.form['nombre']
        email = request.form['email']
        password = request.form['password']
        data_object = DataUser(nombre,email,password)

    return render_template("resultados.html", user=data_object)

if __name__=='POST':
    app.run(debug=True)


    #return f'Registro exitoso para {nombre} con el correo {email}{password}'