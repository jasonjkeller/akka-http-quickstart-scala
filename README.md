# Akka HTTP Scala App 
Example from: https://developer.lightbend.com/guides/akka-http-quickstart-scala/

## Run with Java agent
Run with Java agent:

### Intellij run config
Easiest way is to run `QuickstartApp` via Intellij and specify the `-javaagent` in the run config VM options.

### Command line
Alternate:

```java
java -javaagent:/path/to/newrelic/newrelic.jar -jar /path/to/akka-http-quickstart-scala/sbt-dist/bin/sbt-launch.jar
```

### sbt
```java
reStart
```

## cURL commands for app endpoints
Open a shell that supports cURL and follow these steps to add, retrieve, and delete users.

### Create users
```
curl -H "Content-type: application/json" -X POST -d '{"name": "MrX", "age": 31, "countryOfResidence": "Canada"}' http://localhost:8080/users
curl -H "Content-type: application/json" -X POST -d '{"name": "Anonymous", "age": 55, "countryOfResidence": "Iceland"}' http://localhost:8080/users
curl -H "Content-type: application/json" -X POST -d '{"name": "Bill", "age": 67, "countryOfResidence": "USA"}' http://localhost:8080/users
```

The system should respond after each command to verify that the user was created.

```
{"description":"User MrX created."}% 
```

### Retrieve all users
```
curl http://localhost:8080/users
```

The system responds with the list of users:

```
{"users":[{"name":"Anonymous","age":55,"countryOfResidence":"Iceland"},{"name":"MrX","age":31,"countryOfResidence":"Canada"},{"name":"Bill","age":67,"countryOfResidence":"USA"}]}
```

### Retrieve a specific user
To retrieve a specific user, enter the following command:

```
curl http://localhost:8080/users/Bill
```

The system should respond with the following:

```
{"name":"Bill","age":67,"countryOfResidence":"USA"}
```

### Delete a user
Finally, it is possible to delete specific users:

```
curl -X DELETE http://localhost:8080/users/Bill
```

The response should be:

```
User Bill deleted.
```