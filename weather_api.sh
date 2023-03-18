read -p "Vous souhaitez la méteo de quelle ville ?" location;
weather_api="http://api.weatherapi.com/v1/current.json?key=2474183e9ec44d90888100353231603&q=$location&aqi=yes";
curl $weather_api|jq '.current.temp_c, .location.contry, .location.name';
