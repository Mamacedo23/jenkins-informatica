#!/bin/bash
echo "Creando entorno virtual"
python -m venv venv

echo "activando el entorno virtual"
venv/scripts/activate

echo "instalando dependencias"
pip install -r requirements.txt

echo "Ejecutando pruebas con pytest"
pytest tests/ --junitxml=reports/test-results.xml --html=reports/test-results.html --self-contained-html

echo "pruebas finalizadas resultados en reports"