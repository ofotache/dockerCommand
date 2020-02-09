#!/bin/zsh

clear

echo

echo -e " \e[1;104m --- ALL IMAGES / REPOs ----------------------------------------------------------------- \e[0m";
echo
docker images | grep -E --color 'REPOSITORY|TAG|IMAGE|ID|CREATED|SIZE|MB|GB|$'
echo

echo -e " \e[1;104m --- ALL STATES for containers ---------------------------------------------------------- \e[0m";
echo
docker ps --all | grep -E --color  'CONTAINER|ID|IMAGE|COMMAND|CREATED|STATUS|PORTS|NAMES|Up|Exited|Paused|$'
echo

echo -e " \e[1;104m --- ALL RUNNING containers ------------------------------------------------------------- \e[0m";
echo
docker ps | grep -E --color  'CONTAINER|ID|IMAGE|COMMAND|CREATED|STATUS|PORTS|NAMES|Up|Exited|Paused|$'
echo

echo
