#!/bin/bash

# Verifica si se proporcionó un argumento (IP o dominio)
if [ "$#" -ne 1 ]; then
    echo "Uso: $0 <IP-o-Dominio>"
    exit 1
fi

TARGET=$1
PORTS="21 22 80 443 3306 8080"  # Puertos comunes a escanear

echo "Escaneando puertos en $TARGET..."
echo "---------------------------------"

for port in $PORTS; do
    # Usamos netcat (nc) para verificar conexión (timeout de 2 segundos)
    nc -zv -w 2 $TARGET $port &>/dev/null
    if [ $? -eq 0 ]; then
        echo "✅ Puerto $port está ABIERTO"
    else
        echo "❌ Puerto $port está CERRADO"
    fi
done

echo "---------------------------------"
echo "Escaneo completado."
