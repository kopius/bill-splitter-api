# localhost
curl --include --request GET http://localhost:3000/bills/$ID \
  --header "Authorization: Token token=$TOKEN"


# deployed
curl --include --request GET https://bill-splitter-api.herokuapp.com/bills/$ID \
  --header "Authorization: Token token=$TOKEN"
