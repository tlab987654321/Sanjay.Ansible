from flask import Flask, request, render_template
from db import get_db, insert_expense
from ai import categorize_expense

app = Flask(__name__)

@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        desc = request.form['description']
        amount = float(request.form['amount'])
        category = categorize_expense(desc)
        insert_expense(desc, amount, category)
    return render_template('index.html')

if __name__ == '__main__':
    app.run(host='0.0.0.0')