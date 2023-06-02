# docker-sliver
Docker image build for https://github.com/rasta-mouse/SharpC2

# Build
Execute build.sh script
```
chmod +x build.sh
./build.sh [<password>]
```

# Execution
```
docker run -dit -p 50050:50050/tcp -p 40180:80/tcp -p 41443:443/tcp --name sharpc2 georgemulder/sharpc2:latest
```
With persistent volume
```
docker volume create sharpc2_opt
docker run -dit --mount source=sharpc2_opt,target=/opt -p 50050:50050/tcp -p 40180:80/tcp -p 41443:443/tcp --name sharpc2 georgemulder/sharpc2:latest
```
