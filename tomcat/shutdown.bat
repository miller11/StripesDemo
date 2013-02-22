call ROOT.BAT

java -DSYSTEM=DEV -DMAUI_ROOT=%MAUI_ROOT% -Dcatalina.home=%CATALINA_HOME% -Dcatalina.base=%MAUI_ROOT%\tomcat -jar %CATALINA_HOME%\bin\bootstrap.jar stop