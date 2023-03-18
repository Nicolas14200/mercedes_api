number=$(($RANDOM%50));
echo $number;
curl "https://zenquotes.io/api/quotes"|jq --argjson num "$number" '.[$num].q';
