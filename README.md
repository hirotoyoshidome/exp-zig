# exp-zig

### Build

```
zig init-exe

# build.
zig build run
./zig-out/bin/zig

# simple run.
zig run src/main.zig

# test run.
zig test src/main.zig
```

### Docker

```
docker build -t myzig .
docker run --rm -it -d -v $(pwd):/var/zig --name myzig myzig:latest
docker exec -it myzig bash
```
