FROM fluent/fluentd
USER root

RUN apk update && apk add ruby-dev && apk add build-base
RUN fluent-gem install fluent-plugin-kubernetes_metadata_filter
RUN fluent-gem install fluent-plugin-elasticsearch
RUN fluent-gem install fluent-plugin-prometheus
