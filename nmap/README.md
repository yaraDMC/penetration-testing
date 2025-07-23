![](https://github.com/yaraDMC/machines/blob/main/BANNER.png)

🔍 Proyecto: Análisis de Vulnerabilidades con Nmap + Metasploitable2
"Identificar servicios vulnerables en un entorno controlado (Metasploitable2) mediante:  
1. 🔎 Escaneo sigiloso inicial (-sS)  
2. 🎯 Análisis profundo de puertos críticos (-sCV)  
3. 📊 Documentación profesional de hallazgos  
4. 🤖 Automatización de procesos con scripts (Python/Bash)"

primero prenderemos las maquina tanto en este caso ell metasploit2 y Kali Linux

![](https://github.com/yaraDMC/penetration-testing/blob/main/nmap/images/meta.png)

1. Escaneo Inicial Sigiloso
sudo nmap -sS -A 192.168.0.18

¿Por qué este comando?

-sS: SYN Scan (sigiloso, no completa conexiones TCP) → Ideal para no ser detectado.
-A: Detección de SO y versiones → Primer panorama de vulnerabilidades.

![](https://github.com/yaraDMC/penetration-testing/blob/main/nmap/images/escaneo.png)

2. Escaneo Profundo a Puertos Críticos

y despues utilizamos este script para cuando sabemos que puertos estan abiertos

sudo nmap -sCV -p21,22,23,25,53,80 192.168.0.18

![](https://github.com/yaraDMC/penetration-testing/blob/main/nmap/images/escaneo2.png)

¿Qué logramos?

-sCV: Detecta versiones exactas (+ scripts básicos de Nmap).

Ejemplo de hallazgo para FTP:
| ftp-anon: Anonymous FTP login allowed (¡Riesgo alto!)  
|_vsftpd 2.3.4: Vulnerable a CVE-2011-2523  


3. Otros Comandos Clave 
Comando	Uso
nmap -O	Detección de sistema operativo
nmap --script vuln	Escaneo con scripts de vulnerabilidad
nmap -T4 -F	Escaneo rápido (100 puertos comunes)



🤖 Scripts de Automatización 
1. Automatización de Escaneos (Bash)


## 🛠️ Uso  
1. Clona el repo:  
   bash  
git clone https://github.com/yaraDMC/penetration-testing.git

![](https://github.com/yaraDMC/penetration-testing/blob/main/nmap/images/escaneo3.png)


 chmod +x auto_nmap.sh  
./penetration-testing/auto_nmap.sh <IP>  

![](https://github.com/yaraDMC/penetration-testing/blob/main/nmap/images/escaneo4.png)

Este es un ejemplo de automatizar el escaneo.
