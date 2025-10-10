# Usa una imagen base oficial de Python
FROM python:3.10-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copia los archivos de requerimientos y los instala
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copia todo el código del proyecto al contenedor
COPY . .

# Expone el puerto en el que Gunicorn va a escuchar
EXPOSE 8000

# Define el comando para ejecutar Gunicorn cuando el contenedor se inicie
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "webpersonal.wsgi:application"]