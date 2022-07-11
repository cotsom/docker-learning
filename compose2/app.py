from typing import Dict
from flask import Flask
import mysql.connector
from mysql.connector import Error
from mysql.connector import cursor

app = Flask(__name__)

def create_connection(host_name, user_name, user_password, db_name):
    connection = None
    try:
        connection = mysql.connector.connect(
        	host=host_name,
            	user=user_name,
            	passwd=user_password,
		database=db_name
        )
        print("Connection to MySQL DB successful")
    except Error as e:
        print(f"The error '{e}' occurred")

    return connection


def execute_read_query(connection, query):
    cursor = connection.cursor()
    result = None
    try:
        cursor.execute(query)
        result = cursor.fetchall()
        return result
    except Error as e:
        print(f"The error '{e}' occurred")

@app.route('/')
def show_users():
	connection = create_connection("127.0.0.1", "root", "password", "users")
	select_users = "SELECT * FROM users_info"
	users = execute_read_query(connection, select_users)
	dict = {}
	if users:
		for i, user in enumerate(users):
	    		dict[i] = user
	return dict

if __name__ == '__main__':
	app.run()
