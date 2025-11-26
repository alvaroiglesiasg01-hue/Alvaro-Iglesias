# Usa la imagen base de Python 3.12 slim
FROM python:3.12-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo de dependencias
COPY requirements.txt .

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copia todo el código fuente al contenedor
COPY . .

# Cambia los permisos para que el usuario pueda ejecutar
RUN chmod -R 755 /app

# Define el comando de inicio
CMD ["python", "main.py"]