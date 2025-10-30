set -e
echo "searching for update..."
echo "" | sudo apt update >/dev/null 2>&1
echo "updating..."
echo "" | sudo apt upgrade -y >/dev/null 2>&1
echo "updated"
echo "installing dependences..."
echo "" | sudo apt install -y curl gnupg apt-transport-https >/dev/null 2>&1
echo "adding spotify repository..."
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/spotify.gpg >/dev/null 2>&1
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list >/dev/null 2>&1
echo "updating repositories..."
echo "" | sudo apt update >/dev/null 2>&1
echo "installing spotify..."
echo "" | sudo apt install -y spotify-client >/dev/null 2>&1
echo "installed"
spotify >/dev/null 2>&1 &
