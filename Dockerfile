FROM docker.io/filebrowser/filebrowser:v2

COPY filebrowser.json /.filebrowser.json

VOLUME /database
EXPOSE 8080
