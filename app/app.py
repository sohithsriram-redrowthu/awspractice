from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello from Flask running in EKS! Handled from github actions!"
    return "Line 2 is added and pushed to the git repo"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
