#run this script to execute the SQL script in the database
import os
import django
import sqlite3
from django.conf import settings

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'consultorio.settings')
django.setup()

def run_sql_script(script_path):
    try:
        conn = sqlite3.connect(settings.DATABASES['default']['NAME'])
        cursor = conn.cursor()
        with open(script_path, 'r') as sql_file:
            sql_script = sql_file.read()
        cursor.executescript(sql_script)
        conn.commit()
        print("Script ejecutado exitosamente.")
    except sqlite3.Error as e:
        print(f"Error ejecutando el script SQL: {e}")
    finally:
        conn.close()

# Llama a esta función para ejecutar el script
if __name__ == "__main__":
    script_path = 'sandbox.sql'  # Cambia la ruta si es necesario
    if os.path.exists(script_path):
        run_sql_script(script_path)
    else:
        print(f"El archivo {script_path} no existe.")
