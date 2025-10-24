set -e

echo "Downloading Google Chrome..."
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O /tmp/google-chrome.deb

echo "Installing Google Chrome..."
sudo dpkg -i /tmp/google-chrome.deb || sudo apt --fix-broken install -y

google-chrome
