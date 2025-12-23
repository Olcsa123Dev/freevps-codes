apt update -y
curl -fsSL https://tailscale.com/install.sh | sh
apt install systemd
sudo tailscaled &
sudo tailscale up
