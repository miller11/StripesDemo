rem When setting up a new developer's station, use this batch script to copy the jar files
rem Maui's tomcat/common/lib to the machine's Tomcat's common/lib

rem commons-logging & log4j are for Maui logging support
rem JavaRebel is a developer tool to reload classes dynamically
rem http://www.zeroturnaround.com/javarebel/

rem The servlet, jsp, and el jars are already in Tomcat, but we need them
rem here, so IDEA can import those classes.

copy ".\common\lib\*" %CATALINA_HOME%\common\lib