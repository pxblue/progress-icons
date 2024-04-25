#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
GRAY='\033[1;30m'
NC='\033[0m' # No Color

echo -n "Checking progress icon build artifacts (React Native)... "
yarn build

if [ ! -d ./rn-dist ]; then echo -e "${RED}Not Found${NC}" && exit 1; fi
echo "Checking for required files..."
echo -ne "  Battery.js: "
if [ ! -f ./rn-dist/Battery.js ]; then echo -e "${RED}Not Found${NC}" && exit 1; else echo -e "${GREEN}Found${NC}"; fi
echo -ne "  Battery.d.ts: "
if [ ! -f ./rn-dist/Battery.d.ts ]; then echo -e "${RED}Not Found${NC}" && exit 1; else echo -e "${GREEN}Found${NC}"; fi
echo -ne "  Heart.js: "
if [ ! -f ./rn-dist/Heart.js ]; then echo -e "${RED}Not Found${NC}" && exit 1; else echo -e "${GREEN}Found${NC}"; fi
echo -ne "  Heart.d.ts: "
if [ ! -f ./rn-dist/Heart.d.ts ]; then echo -e "${RED}Not Found${NC}" && exit 1; else echo -e "${GREEN}Found${NC}"; fi
echo -ne "  Pie.js: "
if [ ! -f ./rn-dist/Pie.js ]; then echo -e "${RED}Not Found${NC}" && exit 1; else echo -e "${GREEN}Found${NC}"; fi
echo -ne "  Pie.d.ts: "
if [ ! -f ./rn-dist/Pie.d.ts ]; then echo -e "${RED}Not Found${NC}" && exit 1; else echo -e "${GREEN}Found${NC}"; fi
echo -ne "  Ups.js: "
if [ ! -f ./rn-dist/Ups.js ]; then echo -e "${RED}Not Found${NC}" && exit 1; else echo -e "${GREEN}Found${NC}"; fi
echo -ne "  Ups.d.ts: "
if [ ! -f ./rn-dist/Ups.d.ts ]; then echo -e "${RED}Not Found${NC}" && exit 1; else echo -e "${GREEN}Found${NC}"; fi
echo -ne "  index.js: "
if [ ! -f ./rn-dist/index.js ]; then echo -e "${RED}Not Found${NC}" && exit 1; else echo -e "${GREEN}Found${NC}"; fi
echo -ne "  index.d.ts: "
if [ ! -f ./rn-dist/index.d.ts ]; then echo -e "${RED}Not Found${NC}" && exit 1; else echo -e "${GREEN}Found${NC}"; fi
echo -ne "  package.json: "
if [ ! -f ./package.json ]; then echo -e "${RED}Not Found${NC}" && exit 1; else echo -e "${GREEN}Found${NC}"; fi
echo -ne "  README: "
if [ ! -f ./README.md ]; then echo -e "${RED}Not Found${NC}" && exit 1; else echo -e "${GREEN}Found${NC}"; fi
echo -ne "  CHANGELOG.md: "
if [ ! -f ./CHANGELOG.md ]; then echo -e "${RED}Not Found${NC}" && exit 1; else echo -e "${GREEN}Found${NC}"; fi
echo -ne "  LICENSE: "
if [ ! -f ./LICENSE ]; then echo -e "${RED}Not Found${NC}" && exit 1; else echo -e "${GREEN}Found${NC}"; fi


echo -e "\r\n${GREEN}--------------------------------------------"
echo -e "React Native Progress Icon artifacts successfully created"
echo -e "--------------------------------------------${NC}\r\n\r\n"

exit 0
