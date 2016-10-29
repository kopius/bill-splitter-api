# localhost
curl --include --request GET http://localhost:3000/shares/$ID \
  --header "Authorization: Token token=$TOKEN"


# deployed
curl --include --request GET https://bill-splitter-api.herokuapp.com/shares/$ID \
  --header "Authorization: Token token=$TOKEN"
