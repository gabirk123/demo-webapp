from flask import Flask
from datetime import datetime
import time
app = Flask(__name__)
@app.route("/")
def t():
    name = 'gal'
    now = datetime.now()
    current = now.strftime("%H:%M:%S")
    return render_template("index.html",name=name,current=current)
@app.route("/gal")
def g():
    return '''<html><head><b>HAIDEEEE!!!!!</b></head></html>'''
if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)

