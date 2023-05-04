#!/bin/bash

BLUE='\033[0;34m'
NC='\033[0m' # No Color

action="${BLUE}Install Dependencies${NC}"
echo "┌───────────────────────────────────────┐"
echo -e "│ ${action}                  │"
echo "└───────────────────────────────────────┘"

dart_projects=($(find . -type f -name "pubspec.yaml"))
for project in "${dart_projects[@]}"
do
  dir=`dirname "$project"`
  echo "Running pub get in $dir"
  (cd "$dir"; dart pub get)
  echo ""
done


action="${BLUE}Check Formatting${NC}"
echo "┌───────────────────────────────────────┐"
echo -e "│ ${action}                      │"
echo "└───────────────────────────────────────┘"
dart format . -l 120 --fix || { echo 'dart format failed' ; exit 1; }
echo ""


action="${BLUE}Analyze${NC}"
echo "┌───────────────────────────────────────┐"
echo -e "│ ${action}                               │"
echo "└───────────────────────────────────────┘"
dart analyze --fatal-infos --fatal-warnings || { echo 'dart analyze failed' ; exit 1; }
echo ""


action="${BLUE}Run Tests${NC}"
echo "┌───────────────────────────────────────┐"
echo -e "│ ${action}                             │"
echo "└───────────────────────────────────────┘"
dart test --color -r expanded
echo ""


#action="${BLUE}Pub.dev Analysis${NC}"
#echo "┌───────────────────────────────────────┐"
#echo -e "│ ${action}                      │"
#echo "└───────────────────────────────────────┘"
#dart pub global run pana -l 100 --exit-code-threshold 30
#echo ""
