@echo off
setlocal

set "work=D:\BOSY\L2\S4\Naina\SPRINT\SPRINT"

set "libpath=C:\xampp\tomcat\lib\*"

set "output=%work%\src"

set "temp=%output%\temp"

copy "%output%\annotations\*.java" "%temp%"

copy "%output%\controllers\*.java" "%temp%"

copy "%output%\frameworks\*.java" "%temp%"

copy "%output%\util\*.java" "%temp%"

javac -cp "%libpath%" -d "%output%" "%temp%\*.java"

cd /d "%output%\controllers"

jar cvf frontcontrol.jar -C "%output%\frameworks" . -C %libpath% .

copy frontcontrol.jar "%work%\jar"

del "%output%\controllers\*.class"

del "%output%\annotations\*.class"

del "%output%\frameworks\*.class"

del "%output%\utils\*.class"

pause
