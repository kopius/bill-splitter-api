# localhost

curl --include --request POST http://localhost:3000/bills \
  --header "Content-Type: application/json" \
  --data '{
    "bill": {
      "num_people": "4",
      "total_amount": 200,
      "user_id": 1
    }
  }'

# deployed
curl --include --request POST http://$DEPLOYED_URL/bills \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "bill": {
      "num_people": "4",
      "total_amount": 200,
      "user_id": 1
    }
  }'
