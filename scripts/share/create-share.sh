# localhost
curl --include --request POST http://localhost:3000/shares \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "share": {
      "person_name": "Nim",
      "base_cost": 25.00,
      "bill_id": 1
    }
  }'


# deployed
curl --include --request POST https://bill-splitter-api.herokuapp.com/shares \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "share": {
      "person_name": "Nim",
      "base_cost": 25.00,
      "bill_id": 1
    }
  }'
