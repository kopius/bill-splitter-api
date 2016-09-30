# localhost
curl --include --request DELETE http://localhost:3000/bills/2

# deployed
  curl --include --request DELETE http://$DEPLOYED_URL/bills/2 \
    --header "Authorization: Token token=$TOKEN"
