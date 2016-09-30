# localhost
curl --include --request DELETE http://localhost:3000/bills/2

# deployed
curl --include --request DELETE https://bill-splitter-api.herokuapp.com/bills/2

# authorization header
--header "Authorization: Token token=$TOKEN" \
