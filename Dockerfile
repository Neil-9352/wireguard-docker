FROM linuxserver/wireguard:latest

# Set up environment variables for WireGuard (can be overridden in CloudZilla UI)
ENV PUID=1000
ENV PGID=1000
ENV SERVERPORT=51820
# Auto-detect public IP
ENV SERVERURL=auto  
# Number of clients (adjust as needed)
ENV PEERS=1  
# Allow full VPN access
ENV ALLOWEDIPS=0.0.0.0/0  

# Expose the WireGuard UDP port
EXPOSE 51820/udp

# Mount the WireGuard configuration volume
VOLUME /config

# Run WireGuard
CMD ["/init"]
