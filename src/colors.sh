#!/bin/bash

NOTIFICATION=$(tput setaf 3)
SUCCESS=$(tput setaf 2)
FAILURE=$(tput setaf 1)
DEFAULT=$(tput sgr0)
SEPARATOR=$(printf "%0.s-" {1..50}; printf "\n")
BOLD=$(tput bold)