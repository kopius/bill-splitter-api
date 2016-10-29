# localhost
curl --include --request DELETE http://localhost:3000/shares/$ID \
  --header "Authorization: Token token=$TOKEN"


# deployed
curl --include --request DELETE https://bill-splitter-api.herokuapp.com/shares/$ID \
  --header "Authorization: Token token=$TOKEN"
