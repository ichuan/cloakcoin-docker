# imagecoin-docker
Dockerfile for CloakCoin (<https://github.com/CloakProject/CloakCoin>)


# Building

```bash
docker build -t cloakcoin .
```

# Running

Customize config file `coin.conf` first.

```bash
# block dir
mkdir data
docker run --rm -itd --name cloak -p 12789:12789 -v `pwd`/data:/opt/coin/data -v `pwd`/coin.conf:/opt/coin/coin.conf cloakcoin
```

# Using pre-built docker image

```bash
docker run --rm -itd --name cloak -p 12789:12789 -v `pwd`/data:/opt/coin/data -v `pwd`/coin.conf:/opt/coin/coin.conf mixhq/cloakcoin
```
