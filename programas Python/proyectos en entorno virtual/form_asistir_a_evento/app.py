from flask import Flask, render_template, request
app=Flask(__name__)

@app.route("/")
def index():
    return render_template("index.html")

@app.route('/inscripcion-evento', methods=['POST'])
def submit():
    if request.method=='POST':
        nombre=request.form['nombre']
        email=request.form['email']
        asistencia=request.form['asistencia']
    return f'Registro exitoso para {nombre} con el correo elctronico {email} confirmando asistencia {asistencia}'