# localhost
curl --include --request GET http://localhost:3000/bills/1

# deployed
curl --include --request GET https://bill-splitter-api.herokuapp.com/bills/1

# authorization header
--header "Authorization: Token token=$TOKEN" \
