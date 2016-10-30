# localhost
curl --include --request PATCH http://localhost:3000/shares/$ID \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "share": {
      "cost_adjustment": 5.00
    }
  }'


# deployed
curl --include --request PATCH https://bill-splitter-api.herokuapp.com/shares/$ID \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "share": {
      "cost_adjustment": 5.00
    }
  }'
