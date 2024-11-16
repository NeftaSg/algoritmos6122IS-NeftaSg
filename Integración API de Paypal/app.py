from flask import Flask, render_template, redirect, request, url_for
import paypalrestsdk
import logging

app = Flask(__name__)

# Configura PayPal SDK
paypalrestsdk.configure({
    "mode": "sandbox",  # Usa "live" para producción
    "client_id": "Aa6q3DMlKYCdTm3VmQ0gWrQo2Sm8KlGe01cq7uebdUH5yBQSElNHENRYjskWLTWJO6ZKAcezQYnSD0KO",       # Reemplaza con tu client_id
    "client_secret": "EHLgCr7nS6fyF0S3wurHeRMfMfcQ0jY4h-D-bCxOVrG9Zx0nmWr6-GUCw7MV2hJP_aaO5FiodamLZpLx"  # Reemplaza con tu client_secret
})

# Página principal con el botón de pago
@app.route('/')
def index():
    return render_template('index.html')

# Ruta para crear el pago
@app.route('/pay', methods=['POST'])
def pay():
    payment = paypalrestsdk.Payment({
        "intent": "sale",
        "payer": {
            "payment_method": "paypal"
        },
        "redirect_urls": {
            "return_url": url_for('execute', _external=True),
            "cancel_url": url_for('cancel', _external=True)
        },
        "transactions": [{
            "item_list": {
                "items": [{
                    "name": "Producto de prueba",
                    "sku": "001",
                    "price": "10.00",
                    "currency": "USD",
                    "quantity": 1
                }]
            },
            "amount": {
                "total": "10.00",
                "currency": "USD"
            },
            "description": "Compra de producto de prueba"
        }]
    })

    if payment.create():
        # Redirige al usuario a la URL de aprobación de PayPal
        for link in payment.links:
            if link.rel == "approval_url":
                return redirect(link.href)
    else:
        return f"Error al crear el pago: {payment.error}"

# Ruta para ejecutar el pago después de la aprobación
@app.route('/execute')
def execute():
    payment_id = request.args.get('paymentId')
    payer_id = request.args.get('PayerID')
    payment = paypalrestsdk.Payment.find(payment_id)

    if payment.execute({"payer_id": payer_id}):
        return "Pago completado con éxito"
    else:
        return f"Error al completar el pago: {payment.error}"

# Ruta para cancelar el pago
@app.route('/cancel')
def cancel():
    return "Pago cancelado"

if __name__ == '__main__':
    app.run(debug=True)
