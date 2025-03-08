#!/usr/bin/env bash

#List all repos for provided Github user name
# It requires the GH CLI: https://cli.github.com

set -euo pipefail

USAGE="Usage: gh-clone-org <user|org> [filter]"

[[ $# -eq 0 ]] && echo >&2 "missing arguments: ${USAGE}" && exit 1

user=$1
filter=$2
limit=30

repos="$(gh repo list "$user" --limit $limit | grep "$filter")"

repo_total="$(echo "$repos" | wc -l)"
repos_cloning=0

echo

echo "$repos" | while read -r repo; do
        repo_name="$(echo "$repo" | cut -f1)"
        echo "$repo_name"
done