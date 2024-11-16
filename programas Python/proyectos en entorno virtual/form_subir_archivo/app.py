from flask import Flask, render_template, request
from data_object import DataUser

app=Flask(__name__)
@app.route("/")
def index():
    return render_template("index.html")
@app.route('/upload', methods=['POST'])
def submit():
    if request.method=='POST':
        archivo=request.form['archivo']
        

    data_object = DataUser(archivo)

    return render_template("resultados.html", user=data_object)

if __name__=='POST':
    app.run(debug=True)
    #return f'Registro exitoso  {archivo} subir archivo{file}'