# localhost

curl --include --request PATCH http://localhost:3000/bills/2 \
  --header "Content-Type: application/json" \
  --data '{
    "bill": {
      "num_people": "3",
      "total_amount": 150
    }
  }'

# deployed

curl --include --request PATCH https://bill-splitter-api.herokuapp.com/bills/2 \
  --header "Content-Type: application/json" \
  --data '{
    "bill": {
      "num_people": "3",
      "total_amount": 150
    }
  }'

# authorization header
--header "Authorization: Token token=$TOKEN" \
