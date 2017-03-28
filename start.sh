#!/usr/bin/env bash

rm -rf /var/lib/ambari-server/resources/stacks/HDP/2.5/services/PRESTO
rm -rf /var/lib/ambari-agent/cache/stacks/HDP/2.5/services/PRESTO

mkdir /var/lib/ambari-server/resources/stacks/HDP/2.5/services/PRESTO

cd /var/lib/ambari-server/resources/stacks/HDP/2.5/services/PRESTO

wget https://github.com/prestodb/ambari-presto-service/releases/download/v1.2/ambari-presto-1.2.tar.gz

tar -xvf ambari-presto-1.2.tar.gz -C /var/lib/ambari-server/resources/stacks/HDP/2.5/services/PRESTO
mv /var/lib/ambari-server/resources/stacks/HDP/2.5/services/PRESTO/ambari-presto-1.2/* /var/lib/ambari-server/resources/stacks/HDP/2.5/services/PRESTO
rm -rf /var/lib/ambari-server/resources/stacks/HDP/2.5/services/PRESTO/ambari-presto-1.2


mkdir /var/lib/ambari-agent/cache/stacks/HDP/2.5/services/PRESTO
cd /var/lib/ambari-agent/cache/stacks/HDP/2.5/services/PRESTO
wget https://github.com/prestodb/ambari-presto-service/releases/download/v1.2/ambari-presto-1.2.tar.gz
tar -xvf ambari-presto-1.2.tar.gz -C /var/lib/ambari-agent/cache/stacks/HDP/2.5/services/PRESTO
mv /var/lib/ambari-agent/cache/stacks/HDP/2.5/services/PRESTO/ambari-presto-1.2/* /var/lib/ambari-agent/cache/stacks/HDP/2.5/services/PRESTO
rm -rf /var/lib/ambari-agent/cache/stacks/HDP/2.5/services/PRESTO/ambari-presto-1.2

#cp -R /var/lib/ambari-server/resources/stacks/HDP/2.5/services/PRESTO /var/lib/ambari-agent/cache/stacks/HDP/2.5/services/

chmod -R +x /var/lib/ambari-server/resources/stacks/HDP/2.5/services/PRESTO/*
chmod -R +x /var/lib/ambari-agent/cache/stacks/HDP/2.5/services/PRESTO/*