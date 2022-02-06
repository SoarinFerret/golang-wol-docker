# Golang WoL Docker

Simply packages the go-wol package by @sabhiram in a Docker container

## Usage

```bash
docker build -t wol:latest .
docker run --network=host --rm wol:latest wake 00:00:00:00:00:00
```
