# Pull base image.
FROM leios76/oracle-java

RUN \
    apt-get update && \
    apt-get install -y curl && \
    mkdir -p /nexus && \
    mkdir -p /sonatype-work/nexus && \
    curl 'https://sonatype-download.global.ssl.fastly.net/nexus/oss/nexus-2.12.0-01-bundle.tar.gz' | tar xz -C /nexus/ --strip-components=1 && \
    cp -R /nexus/conf /nexus/conf.default && \ 
    rm -rf /var/lib/apt/lists/*

COPY files/init.sh /init.sh

# Define default command.
CMD ["/init.sh"]

# Define working directory.
WORKDIR /

# Expose ports.
EXPOSE 8081
