# localhost

curl --include --request PATCH http://localhost:3000/bills/16 \
  --header "Authorization: Token token=BAhJIiVhM2ZhZjQ5ODAyNzUwMTI2Yzc1MzEzMDllNTc1MGYzMQY6BkVG--30bcb07cd277b8c316fea8ac98f60d6631aa070b" \
  --header "Content-Type: application/json" \
  --data '{
    "bill": {
      "num_people": 2,
      "total_amount": 130
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
