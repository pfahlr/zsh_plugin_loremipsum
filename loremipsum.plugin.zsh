function loremipsum() {
  emulate -L zsh
  curl -X POST https://lipsum.com/feed/json | jq -r '.feed.lipsum' 
}

alias lipsum='loremipsum'
