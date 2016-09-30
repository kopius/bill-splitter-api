# localhost
curl --include --request DELETE http://localhost:3000/bills/3 \
  --header "Authorization: Token token=BAhJIiU4OTA4ZGU5MzQyNDA4YjNiYTYyNmNiMDkxMTdhMzA0YgY6BkVG--6d6616355b23df0d8635585a271bbf3422d40582"


# deployed
curl --include --request DELETE https://bill-splitter-api.herokuapp.com/bills/3 \
  --header "Authorization: Token token=" \

# authorization header
--header "Authorization: Token token=$TOKEN" \
