import mysql.connector

def get_db():
    return mysql.connector.connect(
        host="db",
        user="root",
        password="rootpass",
        database="tracker"
    )

def insert_expense(desc, amount, category):
    conn = get_db()
    cur = conn.cursor()
    cur.execute("INSERT INTO expenses (date, amount, category, description, account_id) VALUES (CURDATE(), %s, %s, %s, 1)", (amount, category, desc))
    conn.commit()
    conn.close()