# localhost
curl --include --request PATCH http://localhost:3000/bills/$ID \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "bill": {
      "num_people": 2,
      "total_amount": 130
    }
  }'


# deployed
curl --include --request PATCH https://bill-splitter-api.herokuapp.com/bills/$ID \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "bill": {
      "num_people": "3",
      "total_amount": 150
    }
  }'
