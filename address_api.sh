read -p "Ou souhaitez vous aller ?" my_address;
echo "Vous voulez aller a : $my_address";
address_url="https://api-adresse.data.gouv.fr/search/?q="{${my_address// /+}};
tab_address=($(curl --silent --compressed $address_url|jq ' .features[].properties.label'));
#tab_address=($(curl --silent --compressed $address_url|jq ' .features[].properties.label' | jq -s '.'));
echo ${tab_address[@]};

curl --silent --compressed $address_url|jq ' .features[].properties.label';
read -p "quelle address ?" my_select;
echo "vous avez choisi :";
echo ${tab_address[$my_select]};

