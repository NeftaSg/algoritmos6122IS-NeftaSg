from flask import Flask, render_template, request
app=Flask(__name__)
@app.route("/")
def index():
    return render_template("index.html")
@app.route('/buscar-producto', methods=['GET'])
def submit():
    if request.method=='GET':
        producto=request.form['producto']
        categoria=request.form['categoria']
    return f'Registro exitoso para {producto} con la categoria{categoria}'