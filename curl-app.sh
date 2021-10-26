#!/usr/bin/env bash

# create users
curl -H "Content-type: application/json" -X POST -d '{"name": "MrX", "age": 31, "countryOfResidence": "Canada"}' http://localhost:8080/users
echo
curl -H "Content-type: application/json" -X POST -d '{"name": "Anonymous", "age": 55, "countryOfResidence": "Iceland"}' http://localhost:8080/users
echo
curl -H "Content-type: application/json" -X POST -d '{"name": "Bill", "age": 67, "countryOfResidence": "USA"}' http://localhost:8080/users
echo

# retrieve all users
curl http://localhost:8080/users
echo

# retrieve specific user
curl http://localhost:8080/users/MrX
echo
curl http://localhost:8080/users/Anonymous
echo
curl http://localhost:8080/users/Bill
echo

# delete specific user
curl -X DELETE http://localhost:8080/users/MrX
echo
curl -X DELETE http://localhost:8080/users/Anonymous
echo
curl -X DELETE http://localhost:8080/users/Bill
echo

