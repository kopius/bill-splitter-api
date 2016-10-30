# localhost
curl --include --request DELETE http://localhost:3000/bills/$ID \
  --header "Authorization: Token token=$TOKEN"


# deployed
curl --include --request DELETE https://bill-splitter-api.herokuapp.com/bills/$ID \
  --header "Authorization: Token token=$TOKEN" \
