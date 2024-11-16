from flask import Flask
app = Flask(__name__)

@app.route("\pagina_1")
def pagina_1():
    return '<h1> Principal <br> <a href="/pagina_2">Pagina 2</a> <br><a href="/pagina_3">Pagina 3</a>'

@app.route("/pagina_2")
def pagina_2():
    return "<h1> Pagina 2 </h1>"

@app.route("/pagina_3")
def pagina_3():
    return "<h1> Pagina 3 </h1>"

