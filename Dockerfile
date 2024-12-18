ARG ELASTIC_IMAGE=elasticsearch
ARG ELASTVERSION=${VERSION}

FROM $ELASTIC_IMAGE:$ELASTVERSION

RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch ingest-attachment
