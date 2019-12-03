# enviorment
R&amp;D environment to get around complex installs and not being able to run output on Monitor / Display 

## Windows

 - Run x-server (Xming for example).
 - find out your IP
![IP](windows.png)

```
ipconfig
set DISPLAY=10.0.75.1:0.0
docker run -it --rm -p 8888:8888 -e DISPLAY=%DISPLAY% -v /tmp/.X11-unix:/tmp/.X11-unix
```

