number=$RANDOM%40;
echo $number;
curl "https://zenquotes.io/api/quotes"|jq '.[$number].q';
