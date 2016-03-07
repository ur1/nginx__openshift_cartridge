#!/bin/bash

# This file one time copied on install action
# to ${OPENSHIFT_REPO_DIR}.openshift/cron/hourly/

source ${OPENSHIFT_DATA_DIR}.bash_profile

cd ${OPENSHIFT_LOG_DIR}

logrotate ${OPENSHIFT_NGINX_DIR}conf.d/logrotate.conf \
    -s ${OPENSHIFT_LOG_DIR}logrotate.status

