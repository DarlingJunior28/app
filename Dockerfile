# Usar una imagen base de Python (o cualquier otro lenguaje que prefieras)
FROM python:3.9-slim

# Establecer el directorio de trabajo en el contenedor
WORKDIR /app

# Copiar el archivo de la aplicación al contenedor
COPY app.py .

# Instalar Flask para ejecutar la aplicación web
RUN pip install Flask

# Establecer la variable de entorno para Flask
ENV FLASK_APP=app.py

# Exponer el puerto 5000
EXPOSE 5000

# Ejecutar la aplicación
CMD ["flask", "run", "--host=0.0.0.0"]