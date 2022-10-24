FROM dtzar/helm-kubectl:3.10.0

RUN curl https://github.com/FairwindsOps/reckoner/releases/download/v6.0.0/reckoner_6.0.0_linux_amd64.tar.gz >> reckoner.tar.gz
ADD reckoner.tar.gz /bin/reckoner
# Clean up
RUN rm -rf reckoner.tar.gz

RUN reckoner -v
