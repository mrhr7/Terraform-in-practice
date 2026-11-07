#!/usr/bin/env bash
# Search the titles of a GitHub repository's issues, from the terminal.
# It calls the public GitHub search API, which returns the same results as the website.
# Usage: ./gh-issues.sh hashicorp/terraform "words to search for"
set -euo pipefail

query=$(jq -rn --arg q "$2 in:title repo:$1" '$q | @uri')
url="https://api.github.com/search/issues?q=$query&sort=reactions&per_page=5"

curl -s "$url" |
  jq -r '.items[] | "\(.state), \(.reactions.total_count) reactions\n  \(.title)\n  \(.html_url)"'
