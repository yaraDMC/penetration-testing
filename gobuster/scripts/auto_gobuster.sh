#
#!/bin/bash
# Uso: ./auto_gobuster.sh <IP> <WORDLIST>

echo "🔍 Iniciando escaneo contra $1"
gobuster dir -u http://$1 \
-w $2 \
-x .php,.sql,.bak \
-o results/scan_$(date +%Y%m%d_%H%M%S).txt

echo "✅ Resultados guardados en /results"
