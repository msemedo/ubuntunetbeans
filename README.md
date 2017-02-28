# ubuntunetbeans

Dockerfile para execução de Netbeans com Oracle Java 8 e C++

Para executar:

docker run -i -t -e DISPLAY=:0 -v=/tmp/.X11-unix:/tmp/.X11-unix:rw msemedo/ubuntunetbeans:latest
