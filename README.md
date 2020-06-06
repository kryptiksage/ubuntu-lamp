# ubuntu-lamp
Assignment for making a LAMP server in a container using DockerFile
## To run container
```
docker run -p 80:8080 -d --name ubuntu-lamp <image-id>
```
## To get IP-Address of the container
```
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' <container-name/id>
```
```
<ip-address>/hello-world.php --> contains the "Hello World" output
```
