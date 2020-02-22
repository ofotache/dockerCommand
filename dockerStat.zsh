#!/bin/zsh
for i in {1..100}; do echo "\n"; done

echo -e " \e[1;104m --- ALL NETWORK's for containers ------------------------------------------------------- \e[0m";
echo
docker network ls | grep -E --color 'NETWORK|ID|NAME|DRIVER|SCOPE|$'
echo

echo -e " \e[1;104m --- ALL VOLUME's for containers -------------------------------------------------------- \e[0m";
echo
docker volume ls | grep -E --color 'DRIVER|VOLUME|NAME|$'
echo

echo -e "\t\t\t\t\t\t\t" "\e[5;49;33m  Other Docker components ^ \e[0m"
echo

echo -e " \e[1;104m --- Docker MANAGEMENT  ----------------------------------------------------------------- \e[0m";
echo




echo -e "\e[1;49;34m docker\e[1;49;92m system df -v\e[0m" "\t" "-- complete disk usage"
echo -e "\e[1;49;34m docker\e[1;49;92m stats \e[0m" "\t\t" "-- live usage stats"

echo

echo "-------------------------------------------------------------------------------------------"
echo

echo -e "\e[1;49;34m docker\e[1;49;92m container inspect\e[1;49;96m IMAGE ID\e[0m" "\t\t" "-- inspect an image"
echo -e "\e[1;49;34m docker\e[1;49;92m container inspect\e[1;49;96m CONTAINER ID\e[0m" "\t\t" "-- inspect a container"
echo -e "\e[1;49;34m docker\e[1;49;92m network inspect\e[1;49;96m NETWORK ID\e[0m" "\t\t" "-- inspect a network"
echo -e "\e[1;49;34m docker\e[1;49;92m volume inspect\e[1;49;96m VOLUME NAME\e[0m" "\t\t" "-- inspect a volume"
echo

echo "-------------------------------------------------------------------------------------------"
echo

echo -e "\e[1;49;34m docker\e[1;49;92m pull\e[1;49;96m REPOSITORY \e[0m" "\t" "-- download an image or a repository from a registry"
echo -e "\e[1;49;34m docker\e[1;49;92m rmi\e[1;49;96m IMAGE ID \e[0m" "\t\t" "-- remove an image or a repository"
echo

echo -e "\e[1;49;34m docker\e[1;49;92m run\e[1;49;96m REPOSITORY \e[0m" "\t" "-- create a new container from an image"
echo -e "\e[1;49;34m docker\e[1;49;92m rm\e[1;49;96m CONTAINER ID \e[0m" "\t" "-- remove a container"
echo

echo -e "\e[1;49;34m docker\e[1;49;92m rename\e[1;49;96m NAME NEW_NAME\e[0m" "\t" "-- rename a container"
echo

echo -e "\e[1;49;34m docker\e[1;49;92m start\e[1;49;96m NAME \e[0m" "\t\t" "-- start a container"
echo -e "\e[1;49;34m docker\e[1;49;92m stop\e[1;49;96m NAME \e[0m" "\t\t" "-- stop a container"
echo

echo -e "\e[1;49;34m docker\e[1;49;92m pause\e[1;49;96m NAME \e[0m" "\t\t" "-- pause a container"
echo -e "\e[1;49;34m docker\e[1;49;92m unpause\e[1;49;96m NAME \e[0m" "\t\t" "-- unpause a container"
echo

echo -e "\e[1;49;34m docker\e[1;49;92m logs\e[1;49;96m NAME\e[1;49;92m --follow \e[0m" "\t" "-- follow container log output"
echo -e "\e[1;49;34m docker\e[1;49;92m logs\e[1;49;96m NAME\e[1;49;92m --tail 10 \e[0m" "\t" "-- last 10 lines of container log output"


clear
echo

echo -e "\t\t\t\t\t\t" "\e[5;49;33m Scroll up for command cheatsheet ^\e[0m"
echo

echo -e " \e[1;104m --- ALL IMAGES / REPO's ---------------------------------------------------------------- \e[0m";
echo

docker images --format "table{{.ID}}\t{{.Repository}}\t{{.CreatedSince}}\t{{.Size}}" | grep -E --color 'REPOSITORY|IMAGE|ID|CREATED|SIZE|MB|GB|$'
echo

echo -e " \e[1;104m --- ALL STATES for containers ---------------------------------------------------------- \e[0m";
echo

docker ps --all --format "table{{.ID}}\t{{.Names}}\t{{.Ports}}\t{{.Status}}" | grep -E --color  'CONTAINER|ID|NAMES|PORTS|STATUS|Up|Exited|Paused|$'
echo

echo -e " \e[1;104m --- ALL RUNNING containers ------------------------------------------------------------- \e[0m";
echo

docker ps --format "table{{.ID}}\t{{.Names}}\t{{.Ports}}\t{{.Status}}" | grep -E --color  'CONTAINER|ID|NAMES|PORTS|STATUS|Up|Exited|Paused|$'
echo
