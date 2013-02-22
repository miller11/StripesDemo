call ROOT.BAT

SET LOCAL_TOMCAT_PROPERTIES=
IF EXIST local-tomcat-properties.bat CALL local-tomcat-properties.bat

java ^
-Xms128m -Xmx400m -XX:MaxPermSize=400m  ^
-Xdebug -Xnoagent -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=5005 ^
-DMAUI_ROOT=%MAUI_ROOT% ^
-DSYSTEM=DEV ^
-Djava.compiler=NONE ^
-Dorg.apache.tomcat.util.buf.UDecoder.ALLOW_ENCODED_SLASH=true ^
-Dcatalina.home=%CATALINA_HOME% ^
-Dcatalina.base=%MAUI_ROOT%\tomcat ^
%LOCAL_TOMCAT_PROPERTIES% -jar %CATALINA_HOME%\bin\bootstrap.jar start


rem java -XX:MaxPermSize=256m -Xmx400M -agentlib:yjpagent -DSYSTEM=DEV -DMAUI_ROOT=%MAUI_ROOT% -Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=5005 -Dcatalina.home=%CATALINA_HOME% -Dcatalina.base=%MAUI_ROOT%\tomcat -jar %CATALINA_HOME%\bin\bootstrap.jar start

