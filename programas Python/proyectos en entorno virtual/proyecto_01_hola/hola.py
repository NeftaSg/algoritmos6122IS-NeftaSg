from flask import Flask #Flask es el nombre de la clase
app = Flask(__name__)

@app.route('/') #manda a llamar en la ruta principal
def hola():
    return 'Hola Mundo'