#!/bin/bash

set -e

echo "buscando actualizaciones..."
echo "" | sudo apt update >/dev/null 2>&1

echo "actualizando dependencias..."
echo "" | sudo apt upgrade -y >/dev/null 2>&1

echo "descargando Google Chrome..."
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O /tmp/google-chrome.deb >/dev/null 2>&1

echo "instalando Google Chrome..."
sudo dpkg -i /tmp/google-chrome.deb >/dev/null 2>&1 || sudo apt --fix-broken install -y >/dev/null 2>&1

echo "Google Chrome instalado correctamente"
google-chrome
