from flask import Flask, render_template, request
app=Flask(__name__)

@app.route("/")
def index():
    return render_template("index.html")

@app.route('/comentarios', methods=['POST'])
def submit():
    if request.method=='POST':
        nombre=request.form['nombre']
        email=request.form['email']
        comentario=request.form['comentario']
        data_object = DataUser(nombre,email,password)

    return render_template("resultados.html", user=data_object)

if __name__=='POST':
    app.run(debug=True)
