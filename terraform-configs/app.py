from flask import Flask
import time

app = Flask(__name__)

@app.route("/")
def get_curent_time():
    current_time = time.strftime("%Y-%m-%d %H:%M:%S", time.localtime())
    return f"the current time of the day Friday 19:17: {current_time}"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)

    
