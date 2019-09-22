# Spring Security Demo App

Based on [this Udemy course](https://www.udemy.com/spring-hibernate-tutorial) by Chad Darby

## Usage

- Setup Postgres and Tomcat 7 locally or via Docker, check [docker-spring-stack](https://github.com/joerx/docker-spring-stack) to get the full stack up quickly
- Ensure Tomcat manager is running on http://localhost:8080/manager, manager username must be `tomcat`, password `tomcat`
- Create a database `springsec`, initialise it with the [provided schema](./src/main/resources/schema.sql)
- Deploy project into Tomcat via Maven:

```
mvn clean tomcat7:redeploy
``` 

- Login with one of the test users, e.g. `plato`, password is `test123` for all of them
- Add/update users as you like, use [this bcrypt calculator](https://www.bcryptcalculator.com/) to generate passwords 
