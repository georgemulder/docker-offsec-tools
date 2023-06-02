# docker-sliver
Docker image build for https://github.com/BishopFox/sliver

# Build
Execute build.sh script
```
chmod +x build.sh
./build.sh
```

# Execution
```
docker run -dit -p 40080:80/tcp -p 40443:443/tcp -p 48888:8888/tcp --name sliver georgemulder/sliver:latest
```
With persistent volume
```
docker volume create sliver_root
docker run -dit --mount source=sliver_root,target=/root -p 40080:80/tcp -p 40443:443/tcp -p 48888:8888/tcp --name sliver georgemulder/sliver:latest
```
