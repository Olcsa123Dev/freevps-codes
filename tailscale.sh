curl -fsSL https://tailscale.com/install.sh | sh
sudo systemctl enable --now tailscaled || true
sudo tailscale up
