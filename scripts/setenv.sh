#!/bin/sh
echo $PATH | egrep "/opt/drupal-7.56-3/common" > /dev/null
if [ $? -ne 0 ] ; then
PATH="/opt/drupal-7.56-3/apps/drupal/drush:/opt/drupal-7.56-3/sqlite/bin:/opt/drupal-7.56-3/php/bin:/opt/drupal-7.56-3/mysql/bin:/opt/drupal-7.56-3/apache2/bin:/opt/drupal-7.56-3/common/bin:$PATH"
export PATH
fi
echo $LD_LIBRARY_PATH | egrep "/opt/drupal-7.56-3/common" > /dev/null
if [ $? -ne 0 ] ; then
LD_LIBRARY_PATH="/opt/drupal-7.56-3/sqlite/lib:/opt/drupal-7.56-3/mysql/lib:/opt/drupal-7.56-3/apache2/lib:/opt/drupal-7.56-3/common/lib:$LD_LIBRARY_PATH"
export LD_LIBRARY_PATH
fi

TERMINFO=/opt/drupal-7.56-3/common/share/terminfo
export TERMINFO
##### SQLITE ENV #####
			
SASL_CONF_PATH=/opt/drupal-7.56-3/common/etc
export SASL_CONF_PATH
SASL_PATH=/opt/drupal-7.56-3/common/lib/sasl2 
export SASL_PATH
LDAPCONF=/opt/drupal-7.56-3/common/etc/openldap/ldap.conf
export LDAPCONF
##### PHP ENV #####
PHP_PATH=/opt/drupal-7.56-3/php/bin/php
export PHP_PATH
##### MYSQL ENV #####

##### APACHE ENV #####

##### CURL ENV #####
CURL_CA_BUNDLE=/opt/drupal-7.56-3/common/openssl/certs/curl-ca-bundle.crt
export CURL_CA_BUNDLE
##### SSL ENV #####
SSL_CERT_FILE=/opt/drupal-7.56-3/common/openssl/certs/curl-ca-bundle.crt
export SSL_CERT_FILE
OPENSSL_CONF=/opt/drupal-7.56-3/common/openssl/openssl.cnf
export OPENSSL_CONF
OPENSSL_ENGINES=/opt/drupal-7.56-3/common/lib/engines
export OPENSSL_ENGINES


. /opt/drupal-7.56-3/scripts/build-setenv.sh
