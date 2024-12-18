ARG ELASTIC_IMAGE=elasticsearch \
ELASTVERSION

FROM $ELASTIC_IMAGE:$ELASTVERSION

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch ingest-attachment
