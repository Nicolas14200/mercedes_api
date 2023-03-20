read -p "Ou souhaitez vous aller ?" my_address;
echo "Vous voulez aller a : $my_address";
address_url="https://api-adresse.data.gouv.fr/search/?q="{${my_address// /+}};
curl -s $address_url|json_pp|jq;
#curl --silent --compressed $address_url | jq ' .features[].properties.label';
#curl --silent --compressed $address_url|jq -r '@sh "arr=( \(.features[].properties.label) )"';
#echo $arr;
read -p "quelle address ?" my_select;
echo "vous avez choisi :";
echo ${tab_address[$my_select]};

