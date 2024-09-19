function decode_jwt() {
    echo "$1" | jq -R 'split(".") | .[1] | @base64d | fromjson'
}
alias jwt='decode_jwt'