# localhost
curl --include --request GET http://localhost:3000/adjustments/$ID \
  --header "Authorization: Token token=$TOKEN"


# deployed
curl --include --request GET https://bill-splitter-api.herokuapp.com/adjustments/$ID \
  --header "Authorization: Token token=$TOKEN"
