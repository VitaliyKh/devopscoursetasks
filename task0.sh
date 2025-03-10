#!/bin/bash
RED='\033[0;31m'
NOC='\033[0m'

echo -e "\n${RED}OS:${NOC}"
lsb_release -a 2>/dev/null

echo -e "\n${RED}Users:${NOC}"
grep "/bin/bash" /etc/passwd | cut -d: -f1

echo -e "\n${RED}Open Ports:${NOC}"
ss -tuln
