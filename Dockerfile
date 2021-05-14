FROM osixia/openldap:1.5.0

RUN apt-get -y update && \
apt-get install -y --no-install-recommends moreutils && \
apt-get clean && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY environment /container/environment/99-default
COPY service /container/service
