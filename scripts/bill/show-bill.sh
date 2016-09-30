# localhost
curl --include --request GET http://localhost:3000/bills/1

# deployed
curl --include --request GET http://$DEPLOYED_URL/bills/1 \
  --header "Authorization: Token token=$TOKEN"
