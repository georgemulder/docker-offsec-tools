# docker-sliver
Docker image build for https://github.com/rasta-mouse/SharpC2

# Build
Write your desired TeamServer password in a file called tspwd and execute build.sh script
```
echo 'Passw0rd_ > tspwd'
chmod +x build.sh
DOCKER_BUILDKIT=1 ./build.sh
```
If you have issues with BuildKit, check this out: https://docs.docker.com/build/buildkit/

# Execution
```
docker run -dit -p 50050:50050/tcp -p 40180:80/tcp -p 41443:443/tcp --name sharpc2 georgemulder/sharpc2:latest
```
With persistent volume
```
docker volume create sharpc2_opt
docker run -dit --mount source=sharpc2_opt,target=/opt -p 50050:50050/tcp -p 40180:80/tcp -p 41443:443/tcp --name sharpc2 georgemulder/sharpc2:latest
```
