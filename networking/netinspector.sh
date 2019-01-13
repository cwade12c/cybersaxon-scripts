#!/bin/bash
#A script for manual network inspection

#DO NOT EDIT BELOW HERE

echo "Executing lsof -i -n -P"
echo "Press (almost) any key to continue..."
read foo
lsof -i -n -P

echo "\nExecuting netstat -tulnp"
echo "Press (almost) any key to continue..."
read foo
netstat -tulnp

