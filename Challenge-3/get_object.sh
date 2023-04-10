#!/bin/bash
function get_value {
  object=$1
  key=$2
  value=$(echo "$object" | jq -r ".$key")
  echo "$value"
}

value=$(get_value "$object" "$key")
echo "The value of '$key' is '$value'"
