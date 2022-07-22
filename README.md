# exp-zig


### Build

```
zig init-exe
zig build run
```

### Docker

```
docker build -t myzig .
docker run --rm -it -d -v $(pwd):/var/zig --name myzig myzig:latest
docker exec -it myzig bash
```
