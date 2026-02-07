FROM mirakc/mirakc:main-debian

RUN apt update && apt install -y pcscd pcsc-tools wget

RUN wget https://github.com/kazuki0824/recisdb-rs/releases/download/1.2.3/recisdb_1.2.3-1_amd64.deb
RUN apt install -y ./recisdb_1.2.3-1_amd64.deb
RUN rm ./recisdb_1.2.3-1_amd64.deb

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD []