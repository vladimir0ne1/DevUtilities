REM v1.0
REM Run this batch file in folder with your .NET site
REM first parameter - sitename

appcmd add site /name:%1 /physicalPath:%CD% /bindings:http/*:80:%1
appcmd add apppool /name:%1 /managedRuntimeVersion:v4.0
appcmd set site /site.name:%1 /[path='/'].applicationPool:%1
echo.
echo 127.0.0.1	%1 >> %WINDIR%\System32\Drivers\Etc\Hosts
echo.