# localhost

curl --include --request POST http://localhost:3000/bills \
  --header "Authorization: Token token=BAhJIiU4OTA4ZGU5MzQyNDA4YjNiYTYyNmNiMDkxMTdhMzA0YgY6BkVG--6d6616355b23df0d8635585a271bbf3422d40582" \
  --header "Content-Type: application/json" \
  --data '{
    "bill": {
      "num_people": "4",
      "total_amount": 200,
      "user_id": 1
    }
  }'

# deployed
curl --include --request POST https://bill-splitter-api.herokuapp.com/bills \
  --header "Authorization: Token token=" \
  --header "Content-Type: application/json" \
  --data '{
    "bill": {
      "num_people": "4",
      "total_amount": 200,
      "user_id": 1
    }
  }'

  # authorization header
  --header "Authorization: Token token=$TOKEN" \
