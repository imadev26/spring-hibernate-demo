@echo off
echo Compilation du projet Spring-Hibernate Demo...
mvn compile

if %errorlevel% neq 0 (
    echo Erreur lors de la compilation
    pause
    exit /b 1
)

echo.
echo Test de la configuration Hibernate...
mvn exec:java -Dexec.mainClass="TestHibernate"

echo.
echo Demonstration des operations CRUD...
mvn exec:java -Dexec.mainClass="Presentation2"

pause
