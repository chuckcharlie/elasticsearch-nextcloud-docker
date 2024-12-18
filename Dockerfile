ARG ELASTIC_IMAGE=elasticsearch \
VERSION

ENV VERSION=${VERSION}

FROM $ELASTIC_IMAGE:$VERSION

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch ingest-attachment
