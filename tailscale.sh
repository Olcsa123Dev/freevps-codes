apt update -y
curl -fsSL https://tailscale.com/install.sh | sh
sudo tailscaled &
sudo tailscale up
