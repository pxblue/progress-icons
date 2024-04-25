
#!/bin/bash
BLUE='\033[0;34m'
BBLUE='\033[1;34m' #BOLD
PURPLE='\033[0;35m'
RED='\033[0;31m'
BRED='\033[1;31m' #BOLD
GREEN='\033[0;32m'
BGREEN='\033[1;32m' #BOLD
GRAY='\033[1;30m'
NC='\033[0m' # No Color

# Remove previous build
rm -rf ./rn-dist
yarn && tsc --p tsconfig.lib.json

echo -e "${BLUE}Copying Package Resources${NC}"
cp -r package.json ./rn-dist/package.json
cp -r README.md ./rn-dist/README.md
cp -r LICENSE ./rn-dist/LICENSE
cp -r CHANGELOG.md ./rn-dist/CHANGELOG.md

echo -e "${GRAY}Complete${NC}\r\n"