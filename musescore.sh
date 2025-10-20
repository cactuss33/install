set -e
echo "searching for update..."
echo "" | sudo apt update >/dev/null 2>&1
echo "updating..."
echo "" | sudo apt upgrade >/dev/null 2>&1
echo "updated"
echo "installing dependences..."
echo "" | sudo apt install flatpak >/dev/null 2>&1
echo "configuring flatpak..."
flatpak --user remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo #>/dev/null 2>&1
echo "insalling musescore..."
flatpak install -y flathub org.musescore.MuseScore #>/dev/null 2>&1
echo "installed"
flatpak run org.musescore.MuseScore
