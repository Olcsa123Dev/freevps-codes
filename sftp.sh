apt update -y
curl -fsSL https://tailscale.com/install.sh | sh
sudo tailscaled &
sleep 5
sudo tailscale up
