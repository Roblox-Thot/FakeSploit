from flask import Flask, request

app = Flask(__name__)

holding = ''
@app.route("/", methods=["POST"])
def hello_world():
    global holding
    holding = request.data.decode('utf-8')
    return holding

@app.route("/", methods=["GET"])
def bye_world():
    global holding
    temp = holding
    holding = ''
    if "EdgeIY" in temp or "run iy.lua" in temp: # Checks if the script has anything to do with IY
        # return open("iy.lua",'r').read()
        return 'IYSS'
    else:
        return temp

if __name__ == "__main__":
    app.run(debug=True)