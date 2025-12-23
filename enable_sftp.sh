#!/bin/bash
# SFTP enable script for systemd-less VPS

# Ellenőrizzük, hogy fut-e az sshd
if pgrep sshd >/dev/null 2>&1; then
    echo "SFTP elérhető"
else
    echo "SFTP nem elérhető"
fi

# Ellenőrizzük, hogy SFTP subsystem engedélyezve van-e
SFTP_CONF=$(grep -i "^Subsystem sftp" /etc/ssh/sshd_config)

if [ -z "$SFTP_CONF" ]; then
    echo "SFTP konfigurálása..."
    echo "SFTP konfigurálása..." | sudo tee -a /etc/ssh/sshd_config
    echo "SFTP konfigurálása..."
else
    echo "SFTP sikeresen konfigurálásra került..."
fi

echo "Mostantól tudsz csatlakozni: root@abc@abc.tmate.io"
