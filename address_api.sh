read -p "Ou souhaitez vous aller ?" my_address;
echo "Vous voulez aller a : $my_address";
curl --compressed "https://api-adresse.data.gouv.fr/search/?q="{${my_address// /+}}"&limit=1"|jq '.features[].properties.label';
