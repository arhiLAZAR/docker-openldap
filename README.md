# Overview

A docker image to run OpenLDAP. This image is based on [osixia/docker-openldap](https://github.com/osixia/docker-openldap/tree/v1.5.0).

See the full description at the uptream's [README.md](https://github.com/osixia/docker-openldap/blob/v1.5.0/README.md).

## Changes against the upstream
* Fix an [issue](https://github.com/osixia/docker-openldap/issues/183) with diplication of the syncprov overlay.
* Add an env variable **READ_ONLY_REPLICA** (rejects any changes, except for replication).
* Add a timestamp to the output of slapd.
* Create a direstory and a file to store logs.
* Save all stdout and stderr to the logfile.
* Some replication variables are replaced by -master and -slave versions:

| Old variable | Replacement for master | Replacement for slave |
| ------------- | ------------- | ------------- |
| LDAP_REPLICATION_HOSTS | LDAP_REPLICATION_HOSTS_MASTER | LDAP_REPLICATION_HOSTS_SLAVE |
| LDAP_REPLICATION_CONFIG_SYNCPROV | LDAP_REPLICATION_CONFIG_SYNCPROV_MASTER | LDAP_REPLICATION_CONFIG_SYNCPROV_SLAVE |
| LDAP_REPLICATION_DB_SYNCPROV | LDAP_REPLICATION_DB_SYNCPROV_MASTER | LDAP_REPLICATION_DB_SYNCPROV_SLAVE |
