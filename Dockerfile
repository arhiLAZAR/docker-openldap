FROM osixia/openldap:1.5.0

COPY environment /container/environment/99-default
COPY service /container/service
