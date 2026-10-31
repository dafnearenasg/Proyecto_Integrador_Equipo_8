#!/bin/bash
# Script rápido para asignar la IP estática al servidor Wazuh Manager tras un reinicio

# Asignar la IP a la interfaz eth0
sudo ip addr add 192.168.221.120/24 dev eth0

# Levantar la interfaz
sudo ip link set eth0 up

# Verificar la asignación
ip -br a