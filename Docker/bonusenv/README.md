# Docker setup

Remember that you must be running x-server (for example Xming on windows).

## Build container 

Navigate to folder with dockerfile and execute `docker build -t nextgridai` 


## Windows

```
docker run -it -p 8888:8888 -e DISPLAY=host.docker.internal:0 nextgridai
```

## Mac OS

```
docker run -it -e DISPLAY=docker.for.mac.host.internal:0 nextgridai
```

## Linux

```
docker run -it --net=host -e DISPLAY=:0 nextgridai
```