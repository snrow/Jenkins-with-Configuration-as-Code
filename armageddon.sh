#!/bin/bash
echo "Are you sure you want to DELETE all containers + volumes ?"
echo "press Y to confirm" 
read answer
if [ $answer == "Y" ];
then
	docker compose down -v
else
	echo "The containers and volumes gets to live for another day"
fi 
