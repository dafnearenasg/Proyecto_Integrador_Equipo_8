# Bitácora de Actividades y Registro de Avances

Este archivo registra el progreso semanal del equipo de trabajo y detalla las contribuciones individuales realizadas durante el desarrollo del proyecto integrador.

---

## [Semana 1 - Fecha: Octubre 2026] - Etapa 0: Despliegue del Entorno y Repositorio

### Resumen General
Se configuró y validó la red virtual privada aislada (192.168.221.0/24), desplegando la máquina atacante (Kali Linux) y el servidor objetivo (Debian 13 + Docker + DVWA). Se creó la estructura base del repositorio Git.

### Actividades por Integrante

#### Integrante 1: [Nombre Completo]
* **Tarea:** Creación y estructuración inicial del repositorio en GitHub.
* **Archivos modificados:** `README.md`, `BITACORA.md`, `.gitignore`.
* **Commits significativos:** `init: estructura inicial del proyecto.

#### Integrante 2: [Nombre Completo]
* **Tarea:** Configuración de la red aislada Solo-Anfitrión y adaptadores NAT en VirtualBox.
* **Commits significativos:** `docs: documentar direcciones IP de la topologia`.

#### Integrante 3: [Nombre Completo]
* **Tarea:** Despliegue del motor Docker e inicialización del contenedor DVWA en la máquina Debian.
* **Archivos modificados:** `lab-setup/docker-compose.yml`.

#### Integrante 4: [Nombre Completo]
* **Tarea:** Pruebas de conectividad entre Kali Linux y Debian; validación de acceso web a DVWA.

---

## [Semana 2 - Fecha: Octubre 2026] - Fase 1: Reconocimiento y Enumeración

### Resumen General
Inicio de las actividades del Equipo Rojo desde Kali Linux. Ejecución de escaneos de puertos, servicios y descubrimiento de rutas ocultas.

### Actividades por Integrante

#### Integrante 1: [Nombre Completo]
* **Tarea:** Escaneo de puertos y detección de versiones de servicios con Nmap sobre la IP `192.168.221.110`.
* **Archivos generados:** `docs/nmap_initial.txt`.

#### Integrante 2: [Nombre Completo]
* **Tarea:** Enumeración de directorios web ocultos con Gobuster sobre DVWA.
* **Archivos generados:** `docs/gobuster_scan.txt`.

---
