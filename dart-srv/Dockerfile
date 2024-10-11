FROM google/dart

WORKDIR /app

COPY bin .

RUN /usr/bin/dart pub add mysql_client

CMD []
ENTRYPOINT ["/usr/bin/dart", "main.dart"]
