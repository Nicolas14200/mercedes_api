read -p "Vous souhaitez la méteo de quelle ville ?" location;
weather_api="http://api.weatherapi.com/v1/current.json?key=2474183e9ec44d90888100353231603&q=$location&aqi=yes";
temp_c=$(curl --silent $weather_api|jq -r ".current.temp_c");
ville=$(curl --silent $weather_api|jq -r ".location.name");
condition=$(curl --silent $weather_api|jq -r ".current.condition.text");
wind=$(curl --silent $weather_api|jq -r ".current.wind_kph");
wind_dir=$(curl --silent $weather_api|jq -r ".current.wind_dir");
echo "A $ville il fait $temp_c °C, les condition seront $condition, avec un vent $wind_dir de $wind Km/h";
