# Start Maui using JavaRebel
# $CATALINA_HOME/common/lib should contain javarebel.jar and javarebel.lic

. root.sh

# set CATALINA_HOME if it isn't already
if [ -z "$CATALINA_HOME" ]
then
	export CATALINA_HOME="/usr/local/tomcat"
fi

# set CATALINA_BASE if it isn't already.
# If you're working on a branch, you should set this to your project's tomcat directory.
if [ -z "$CATALINA_BASE" ]
then
	export CATALINA_BASE=$MAUI_ROOT"/tomcat"
fi

echo "Catalina home: $CATALINA_HOME"
echo "Catalina base: $CATALINA_BASE"

export DYLD_LIBRARY_PATH=/Applications/YourKit\ Java\ Profiler\ 7.5.1.app/bin/mac/

#java -server -XX:MaxPermSize=500M -Xmx1000m -DMAUI_ROOT=$MAUI_ROOT -DSYSTEM=DEV -Xdebug -noverify -agentlib:yjpagent -javaagent:$MAUI_ROOT/tomcat/common/lib/jrebel.jar -Drebel.stripes_plugin=true -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=5005 -Dcatalina.home=/usr/local/tomcat -Dcatalina.base=$CATALINA_BASE -jar $CATALINA_HOME/bin/bootstrap.jar start

java -server -XX:MaxPermSize=500M -Xmx1000m -DMAUI_ROOT=$MAUI_ROOT -DSYSTEM=DEV -Xdebug -noverify -javaagent:$MAUI_ROOT/tomcat/common/lib/jrebel.jar -Drebel.stripes_plugin=true -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=5005 -Dcatalina.home=/usr/local/tomcat -Dcatalina.base=$CATALINA_BASE -jar $CATALINA_HOME/bin/bootstrap.jar start