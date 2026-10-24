function start_docker
    sudo systemctl start docker.service
    sudo systemctl start docker.socket
end
