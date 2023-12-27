FROM python:3.11

ENV PYTHONUNBUFFERED 1

# Establecer el directorio de trabajo
WORKDIR /code/

# Copiar el código local al contenedor
COPY . /code/
COPY requirements.txt /code/

# Instalar virtualenv
RUN pip install virtualenv

# Crear un entorno virtual e instalar dependencias
RUN virtualenv venv
RUN /bin/bash -c "source venv/bin/activate"
RUN pip install -r requirements.txt


# Exponer el puerto
EXPOSE 8000
