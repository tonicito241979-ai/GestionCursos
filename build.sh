#!/usr/bin/env bash

echo "Instalando dependencias..."
pip install -r requirements.txt

echo "Ejecutando migraciones..."
python Universidad/manage.py migrate

echo "Recolectando archivos estáticos..."
python Universidad/manage.py collectstatic --noinput