# Spring Hibernate Demo

Ce projet démontre l'intégration de Spring Framework avec Hibernate pour la gestion des entités persistantes.

## Objectifs pédagogiques

- Comprendre les bases de la gestion des dépendances avec Maven
- Configurer Spring pour gérer l'injection de dépendances et les transactions
- Intégrer Hibernate pour la gestion des entités persistantes
- Créer un DAO pour gérer les opérations CRUD
- Configurer une base de données MySQL pour l'interaction avec les entités

## Prérequis

- Java 11 ou supérieur
- Maven 3.6 ou supérieur
- MySQL 8.0 ou supérieur

## Configuration de la base de données

1. Créer une base de données MySQL nommée `base` :
```sql
CREATE DATABASE base;
```

2. Modifier les paramètres de connexion dans `src/main/resources/application.properties` si nécessaire :
```properties
spring.datasource.username=root
spring.datasource.password=votre_mot_de_passe
```

## Structure du projet

```
src/
 └── main/
     ├── java/
     │   ├── dao/
     │   │   └── IDao.java              # Interface générique pour les opérations CRUD
     │   ├── entities/
     │   │   └── Product.java           # Entité JPA Product
     │   ├── metier/
     │   │   └── ProductDaoImpl.java    # Implémentation du DAO Product
     │   ├── util/
     │   │   └── HibernateConfig.java   # Configuration Spring et Hibernate
     │   ├── TestHibernate.java         # Classe de test de la configuration
     │   └── Presentation2.java         # Classe de démonstration
     └── resources/
         └── application.properties     # Configuration de la base de données
```

## Compilation et exécution

1. Compiler le projet :
```bash
mvn compile
```

2. Exécuter le test de configuration :
```bash
mvn exec:java -Dexec.mainClass="TestHibernate"
```

3. Exécuter la démonstration :
```bash
mvn exec:java -Dexec.mainClass="Presentation2"
```

## Fonctionnalités

- **Injection de dépendances** : Spring gère automatiquement l'injection des dépendances
- **Gestion des transactions** : Les transactions sont gérées automatiquement par Spring
- **Mapping ORM** : Hibernate mappe les entités Java vers les tables MySQL
- **Opérations CRUD** : Interface générique pour les opérations Create, Read, Update, Delete

## Technologies utilisées

- **Spring Framework 5.3.22** : Injection de dépendances et gestion des transactions
- **Hibernate 5.6.12** : Mapping objet-relationnel (ORM)
- **MySQL 8.0** : Base de données relationnelle
- **Maven** : Gestion des dépendances et build

## Extensions possibles

- Ajouter une entité Category avec une relation @ManyToOne
- Créer une interface web via Servlets ou Spring MVC
- Écrire des tests unitaires avec JUnit et Spring
- Ajouter la validation des données avec Bean Validation
