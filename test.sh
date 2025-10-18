#!/bin/bash

echo "Compilation du projet Spring-Hibernate Demo..."
mvn compile

if [ $? -ne 0 ]; then
    echo "Erreur lors de la compilation"
    exit 1
fi

echo ""
echo "Test de la configuration Hibernate..."
mvn exec:java -Dexec.mainClass="TestHibernate"

echo ""
echo "Demonstration des operations CRUD..."
mvn exec:java -Dexec.mainClass="Presentation2"
