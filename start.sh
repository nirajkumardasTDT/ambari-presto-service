#!/usr/bin/env bash

mkdir /var/lib/ambari-server/resources/stacks/HDP/2.5/services/PRESTO

cd /var/lib/ambari-server/resources/stacks/HDP/2.5/services/PRESTO

wget https://github.com/prestodb/ambari-presto-service/releases/download/v1.2/ambari-presto-1.2.tar.gz

tar -xvf ambari-presto-1.2.tar.gz -C /var/lib/ambari-server/resources/stacks/HDP/2.5/services/PRESTO
mv /var/lib/ambari-server/resources/stacks/HDP/2.5/services/PRESTO/ambari-presto-1.2/* /var/lib/ambari-server/resources/stacks/HDP/2.5/services/PRESTO
rm -rf /var/lib/ambari-server/resources/stacks/HDP/2.5/services/PRESTO/ambari-presto-1.2

chmod -R +x /var/lib/ambari-server/resources/stacks/HDP/2.5/services/PRESTO/*