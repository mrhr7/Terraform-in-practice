#!/usr/bin/env bash
# Search Stack Overflow for Terraform questions, from the terminal.
# It calls the public Stack Exchange API, which returns the same results as the website.
# Usage: ./so-search.sh "error message"
set -euo pipefail

query=$(jq -rn --arg q "$1" '$q | @uri')
url="https://api.stackexchange.com/2.3/search/advanced?q=$query&tagged=terraform&site=stackoverflow&sort=votes&order=desc&pagesize=5"

curl -s --compressed "$url" |
  jq -r '.items[] | "\(.score) votes, answered: \(.is_answered)\n  \(.title)\n  \(.link)"' |
  sed -e 's/&quot;/"/g' -e "s/&#39;/'/g" -e 's/&amp;/\&/g'
