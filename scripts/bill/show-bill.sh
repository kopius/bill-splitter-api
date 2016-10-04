# localhost
curl --include --request GET http://localhost:3000/bills/12 \
  --header "Authorization: Token token=BAhJIiU4NzBiZDgyYmQyYjkwMjA0MDZlMDI3MDU2NmEzZTk0NQY6BkVG--4e5e483caa14d07cd8853facaefc34cf3056adf9"

# deployed
curl --include --request GET https://bill-splitter-api.herokuapp.com/bills/3 \
  --header "Authorization: Token token="

# authorization header
--header "Authorization: Token token=$TOKEN" \
