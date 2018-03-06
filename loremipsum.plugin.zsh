function loremipsum() {
  amount=5
  what=parags

  if [[ -n $1 ]]; then 
    amount=$1
  fi

  if [[ -n $2 ]]; then
    what=$2
  fi

  curl -X POST https://lipsum.com/feed/json -d amount=$amount -d what=$what | jq -r '.feed.lipsum' 
}

alias lipsum='loremipsum'
