#!/bin/sh

. root.sh

[ -f local-tomcat-properties.sh ] && . local-tomcat-properties.sh

java \
-Xms1024m -Xmx1024m -XX:MaxPermSize=400m \
-Xdebug -Xnoagent -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=5005 \
-DMAUI_ROOT=$MAUI_ROOT \
-DSYSTEM=DEV \
-Duiowa.maui.site.HqlTraceFilter=true \
-Djava.compiler=NONE \
-Dorg.apache.tomcat.util.buf.UDecoder.ALLOW_ENCODED_SLASH=true \
-Dcatalina.home=/usr/local/tomcat \
-Dcatalina.base=$MAUI_ROOT/tomcat \
$LOCAL_TOMCAT_PROPERTIES -jar /usr/local/tomcat/bin/bootstrap.jar \
start

# -Duiowa.maui.site.HqlTraceFilter=true \


#java -agentpath:/Applications/YourKit_Java_Profiler_9.0.8.app/bin/mac/libyjpagent.jnilib -Xms128m -Xmx400m -XX:MaxPermSize=400m -DMAUI_ROOT=$MAUI_ROOT -DSYSTEM=DEV -Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=5005 -Dcatalina.home=/usr/local/tomcat -Dcatalina.base=$MAUI_ROOT/tomcat -jar /usr/local/tomcat/bin/bootstrap.jar start


#-DBLOCK_SCHEDULER=true \