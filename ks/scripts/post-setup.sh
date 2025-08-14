#!/bin/bash
# ----- post-setup.sh -----
# Purpose: Finalize system config & send notification emails if enabled

# Load the variables
VARS_FILE="/mnt/install/repo/vars.cfg"
if [ -f "$VARS_FILE" ]; then
    source "$VARS_FILE"
else
    echo "vars.cfg not found, skipping."
    exit 0
fi

# ---- Any other final setup commands here ----
echo "Running system post-setup tasks..."

# Check if SMTP is enabled
if [ "$SMTP_ENABLED" == "true" ]; then
    echo "Configuring SMTP and sending email..."

    # Install msmtp if not installed already
    if ! command -v msmtp >/dev/null 2>&1; then
        dnf install -y msmtp
    fi

    # Configure msmtp
    cat <<EOF > /root/.msmtprc
defaults
auth           on
tls            on
tls_trust_file /etc/ssl/certs/ca-bundle.crt
logfile        /var/log/msmtp.log

account        default
host           $SMTP_SERVER
port           $SMTP_PORT
from           $SMTP_FROM
user           $SMTP_USER
password       $SMTP_PASS
EOF

    chmod 600 /root/.msmtprc

    # Send email
    echo -e "Subject: RHEL Installation Complete\n\nThe RHEL installation completed successfully on $(hostname)." \
        | msmtp --from=default -t "$SMTP_TO"

    echo "Email sent to $SMTP_TO"
else
    echo "SMTP disabled in vars.cfg, skipping email."
fi


# Define where logs will be uploaded
LOG_SERVER_URL="http://152.67.191.181/ks"
LOG_FILE="logs/anaconda.log"

# Function to upload log file using curl (HTTP POST or PUT)
upload_log() {
    if command -v curl >/dev/null 2>&1; then
        curl -X PUT --data-binary @"$1" "$LOG_SERVER_URL/$(hostname)-$(date +%Y%m%d%H%M%S).log"
    elif command -v wget >/dev/null 2>&1; then
        # Wget PUT not standard, may need alternative or FTP upload
        echo "wget does not support HTTP PUT easily"
    else
        echo "No curl or wget found, skipping log upload"
    fi
}

# Upload key logs
if [ -f logs/anaconda.log ]; then
    upload_log logs/anaconda.log
fi

