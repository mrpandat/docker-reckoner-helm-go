FROM dtzar/helm-kubectl:3.10.0

RUN curl -LJO  https://github.com/FairwindsOps/reckoner/releases/download/v6.0.0/reckoner_6.0.0_linux_amd64.tar.gz \
    && tar -zxvf reckoner_6.0.0_linux_amd64.tar.gz reckoner \
    && cp reckoner /bin/reckoner \
    && rm -rf reckoner_6.0.0_linux_amd64.tar.gz

RUN reckoner --version
CMD bash
