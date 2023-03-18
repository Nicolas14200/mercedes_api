number=$(($RANDOM%50));
quote_url="https://zenquotes.io/api/quotes";
curl $quote_url|jq --argjson num "$number" '.[$num].q';
