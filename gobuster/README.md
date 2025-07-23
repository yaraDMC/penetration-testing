![](https://github.com/yaraDMC/machines/blob/main/BANNER.png)

🔍 Proyecto: Enumeración Web con Gobuster en Metasploitable2
🎯 Objetivos
✔️ Enumerar directorios y archivos ocultos en servicios web
✔️ Identificar puntos de entrada para explotación con Metasploit
✔️ Automatizar el proceso con scripts personalizados

🔥 Metodología Paso a Paso
1. Escaneo Básico con Gobuster
   
gobuster dir -u http://192.168.0.18/ -w /usr/share/wordlist/dirb/common.txt -o escaneo.txt

![](https://github.com/yaraDMC/penetration-testing/blob/main/gobuster/images/gobuster.png)

Hallazgos comunes en Metasploitable2:

/phpmyadmin/ → Panel de MySQL vulnerable
/admin/ → Posibles paneles de login
/backup/ → Archivos de configuración expuestos

🤖 Script de Automatización
se clona el archivo el arhivo auto_gobuster.sh
con:  git clone https://github.com/yaraDMC/penetration-testing.git

![](https://github.com/yaraDMC/penetration-testing/blob/main/gobuster/images/clonar.png)

chmod +x auto_gobuster.sh
./auto_gobuster.sh (ip) (wordlist)
![](https://github.com/yaraDMC/penetration-testing/blob/main/gobuster/images/escaneo_gobuster.png)

🌐 Qué hace el script (en términos simples):
Ejecuta Gobuster para buscar directorios/archivos ocultos en un sitio web.

Guarda los resultados en un archivo con marca de tiempo.

Requiere 2 datos de entrada:
Una dirección IP/dominio ($1)
Una lista de palabras (wordlist) ($2)

📌 Ejemplo de uso:
./auto_gobuster.sh 192.168.1.100 /usr/share/wordlists/dirb/common.txt

Uso ético: Solo ejecutar en sistemas con permiso.

