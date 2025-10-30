set -e
echo "searching for update..."
echo "" | sudo apt update >/dev/null 2>&1
echo "updating..."
echo "" | sudo apt upgrade -y >/dev/null 2>&1
echo "updated"
echo "installing dependences..."
echo "" | sudo apt install -y wget gpg apt-transport-https >/dev/null 2>&1
echo "adding microsoft repository..."
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/microsoft.gpg >/dev/null 2>&1
echo "deb [arch=amd64,arm64,armhf] https://packages.microsoft.com/repos/code stable main" | sudo tee /etc/apt/sources.list.d/vscode.list >/dev/null 2>&1
echo "updating repositories..."
echo "" | sudo apt update >/dev/null 2>&1
echo "installing visual studio code..."
echo "" | sudo apt install -y code >/dev/null 2>&1
echo "installed"
code >/dev/null 2>&1 &
