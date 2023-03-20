number=$(($RANDOM%50));
curl --silent "https://zenquotes.io/api/quotes" |json_pp > quote.json;
jq --argjson num "$number" '.[$num].q' quote.json;
