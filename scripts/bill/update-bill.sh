# localhost

curl --include --request PATCH http://localhost:3000/bills/3 \
  --header "Authorization: Token token=BAhJIiU4OTA4ZGU5MzQyNDA4YjNiYTYyNmNiMDkxMTdhMzA0YgY6BkVG--6d6616355b23df0d8635585a271bbf3422d40582" \
  --header "Content-Type: application/json" \
  --data '{
    "bill": {
      "num_people": "3",
      "total_amount": 150
    }
  }'

# deployed

curl --include --request PATCH https://bill-splitter-api.herokuapp.com/bills/3 \
  --header "Authorization: Token token=" \
  --header "Content-Type: application/json" \
  --data '{
    "bill": {
      "num_people": "3",
      "total_amount": 150
    }
  }'

# authorization header
--header "Authorization: Token token=$TOKEN" \
