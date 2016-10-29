# localhost
curl --include --request PATCH http://localhost:3000/shares/$ID \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "share": {
      "base_cost": "30.00",
      "bill_id": 1
    }
  }'


# deployed
curl --include --request PATCH https://bill-splitter-api.herokuapp.com/shares/$ID \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "share": {
      "base_cost": "30.00",
      "bill_id": 1
    }
  }'
