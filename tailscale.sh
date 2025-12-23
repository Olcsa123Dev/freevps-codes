apt update -y
curl -fsSL https://tailscale.com/install.sh | sh
apt install systemd
sudo systemctl enable --now tailscaled || true
sudo tailscale up
