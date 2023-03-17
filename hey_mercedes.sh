if [ "$1" = "hey_mercedes" ];then
 read -p "Comment puis-je vous aider aujourd'hui? [weather, address, quoteday]" my_var;
 if [ "$my_var" = "weather"  ];then
  chmod +x weather_api.sh;
  ./weather_api.sh;
 elif [ "$my_var" = "address" ];then
  chmod +x address_api.sh;
  ./address_api.sh;
 elif [ "$my_var" = "quoteday" ];then
  chmod +x quoteday_api.sh;
  ./quoteday_api.sh;
 else
  echo "demande non valide";
 fi;
else
 echo "Je n'ai pas saisie votre demande.";
fi;
