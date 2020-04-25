# Spring Boot Security OAuth Example

#### Securing REST API with Spring Security OAuth2

To run this repo, please follow these command :

1. Paste this command to your terminal

 `mvn clean package spring-boot:run`
 
2. docker build . -t jamesmedice/oauth-app


3. kubectl apply -f deployment.yaml

4.
 kubectl delete -n default deployment oauth-app
 kubectl delete -n default service oauth-app
 kubectl delete -n default configmap config-ouath-app