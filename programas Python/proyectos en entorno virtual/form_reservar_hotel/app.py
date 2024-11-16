from flask import Flask, render_template, request
from data_object import DataUser
app=Flask(__name__)
@app.route("/")
def index():
    return render_template("index.html")
@app.route('/reservar-hotel', methods=['POST'])
def submit():
    if request.method=='POST':
        checkin=request.form['checkin']
        checkout=request.form['checkout']
        personas=request.form['personas']

        data_object = DataUser( checkin, checkout,personas)

    return render_template("resultados.html", user=data_object)

if __name__=='POST':
    app.run(debug=True)

    #return f'Registro exitoso para {checkin} fecha{checkout} {personas}'