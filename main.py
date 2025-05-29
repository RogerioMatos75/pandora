import os

from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def home():
    return jsonify({"message": "Bem-vindo ao Agente Pandora!"})

@app.route('/api/status', methods=['GET'])
def status():
    return jsonify({"status": "API está funcionando!"})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)