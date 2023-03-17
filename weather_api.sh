read -p "Vous souhaitez la méteo de quelle ville ?" location;
curl "http://api.weatherapi.com/v1/current.json?key=2474183e9ec44d90888100353231603&q=$location&aqi=yes"|jq '.current.temp_c, .location.contry, .location.name';

