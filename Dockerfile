FROM ubuntu:19.04

RUN mkdir -p /opt/coin
WORKDIR /opt/coin

EXPOSE 12789

RUN apt-get update && apt-get install -y wget unzip python
RUN wget https://github.com/CloakProject/CloakCoin/releases/download/2.2.2.2/Linux-cloakcoin-rEvolution-2x4-setup.zip -O coin.zip && unzip coin.zip

# cleanup
RUN apt remove -y wget unzip && apt autoremove -y && apt autoclean
RUN rm -rf /var/lib/apt/lists/* /opt/cloakcoin-qt

VOLUME ["/opt/coin/data", "/opt/coin/coin.conf"]

ENTRYPOINT ["/opt/coin/cloakcoind"]
CMD ["-conf=/opt/coin/coin.conf"]
