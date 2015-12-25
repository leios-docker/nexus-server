#!/bin/sh

if [ ! -f /nexus/conf/nexus.properties ]
then
    cp -Ra /nexus/conf.default/* /nexus/conf
    mkdir -p /sonatype-work/nexus
fi


/nexus/bin/jsw/linux-x86-64/wrapper /nexus/bin/jsw/conf/wrapper.conf wrapper.syslog.ident=nexus wrapper.pidfile=/nexus/bin/jsw/linux-x86-64/nexus.pid wrapper.daemonize=FALSE
