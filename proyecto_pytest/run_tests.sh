#!/bin/bash
echo "Creando entorno virtual"
if [ ! -d "venv" ]; then
    echo "El entorno virtual no existe. Creando..."
    python3 -m venv venv
else
    echo "El entorno virtual ya existe."
fi

echo "activando el entorno virtual"
if [ -f "venv/bin/activate" ]; then
    source venv/bin/activate
elif [ -f "venv/Scripts/activate" ]; then
    source venv/Scripts/activate
else
    echo "Error: No se pudo activar el entorno virtual. Asegúrate de que el entorno virtual se haya creado correctamente."
    exit 1
fi

echo "instalando dependencias"
pip install --upgrade pip --break-system-packages
pip install -r requirements.txt --break-system-packages

echo "Ejecutando pruebas con pytest"
pytest tests/ --junitxml=reports/test-results.xml --html=reports/test-results.html --self-contained-html

echo "pruebas finalizadas resultados en reports"