# localhost
curl --include --request GET http://localhost:3000/bills

# deployed
curl --include --request GET http://$DEPLOYED_URL/bills \
  --header "Authorization: Token token=$TOKEN"
