# localhost
curl --include --request GET http://localhost:3000/bills

# deployed
curl --include --request GET https://bill-splitter-api.herokuapp.com/bills

# authorization header
--header "Authorization: Token token=$TOKEN" \
