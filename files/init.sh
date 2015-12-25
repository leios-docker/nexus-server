#!/bin/sh

if [ ! -f /nexus/conf/nexus.properties ]
then
    cp -Ra /nexus/conf.default/* /nexus/conf
    mkdir -p /sonatype-work/nexus
fi


/nexus-2.12.0-01/bin/jsw/linux-x86-64/wrapper /nexus-2.12.0-01/bin/jsw/conf/wrapper.conf wrapper.syslog.ident=nexus wrapper.pidfile=/nexus-2.12.0-01/bin/jsw/linux-x86-64/nexus.pid wrapper.daemonize=FALSE
