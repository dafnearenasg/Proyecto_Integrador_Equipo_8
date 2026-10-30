# Evaluación de Seguridad Ofensiva, Monitoreo SIEM y Arquitectura Zero Trust sobre DVWA

**Asignatura:** Computer Security (Grupo 6CV1) | ESCOM – IPN  
**Semestre:** 27/1  
**Equipo de Trabajo:**
* [Nombre Integrante 1]
* [Nombre Integrante 2]
* [Nombre Integrante 3]
* [Nombre Integrante 4]

---

## 📋 Descripción del Proyecto
Este proyecto integrador recorre el ciclo de vida completo de la ciberseguridad sobre una aplicación web intencionalmente vulnerable (Damn Vulnerable Web Application - DVWA)[cite: 1]. Comprende tres fases operativas:
1. **Fase 1 (Equipo Rojo):** Reconocimiento, escaneo y explotación controlada de vulnerabilidades web (SQLi, Command Injection, XSS) catalogadas bajo CVSS v3.1 y mapeadas a MITRE ATT&CK[cite: 1].
2. **Fase 2 (Equipo Azul):** Ingesta de telemetría, detección de ataques y generación de reglas de alerta en el SIEM Wazuh[cite: 1].
3. **Fase 3 (Gobierno y Arquitectura):** Formulación de políticas de seguridad basadas en ISO 27001 / NIST CSF y diseño de una arquitectura de Confianza Cero (Zero Trust)[cite: 1].

> **Nota sobre Evidencias:** Para mantener un repositorio ligero y organizado, las capturas de pantalla de los comandos y hallazgos no se almacenan en este repositorio git; se incluyen de manera exclusiva en el documento formal de entrega y reporte técnico del proyecto[cite: 1].

---

## 📐 Topología y Arquitectura del Laboratorio
El laboratorio se ejecuta de forma confinado en una red privada virtualizada aislada (*Host-Only* / Red Aislada 192.168.221.0/24), garantizando el cumplimiento de las reglas éticas[cite: 1]:

| Rol del Nodo | Sistema Operativo | Dirección IP | Servicios / Contenedores |
| :--- | :--- | :--- | :--- |
| **Atacante (Equipo Rojo)** | Kali Linux | `192.168.221.5` | Suite de auditoría (Nmap, Gobuster, Nikto, Burp Suite)[cite: 1] |
| **Objetivo (Víctima)** | Debian 13 (Trixie) | `192.168.221.110` | Docker / Contenedor DVWA (Puerto 80/443)[cite: 1] |
| **Monitoreo (Equipo Azul)** | Wazuh SIEM Server | TBD (Fase 2) | Wazuh Manager / Indexer / Dashboard[cite: 1] |

---

## 🚀 Guía de Reproducibilidad

### Prerrequisitos
* Oracle VM VirtualBox[cite: 1]
* ISO de Debian 13 (Trixie) o Ubuntu Server[cite: 1]
* VM de Kali Linux[cite: 1]

### Despliegue del Entorno Objetivo (Servidor Debian + DVWA)
1. **Configurar las interfaces de red en Debian (`/etc/network/interfaces`):**
   ```text
   auto enp0s3
   iface enp0s3 inet static
       address 192.168.221.110
       netmask 255.255.255.0

   allow-hotplug enp0s8
   iface enp0s8 inet dhcp
