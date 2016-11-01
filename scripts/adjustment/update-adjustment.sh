# localhost
curl --include --request PATCH http://localhost:3000/adjustments/$ID \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "adjustment": {
      "label": "nachos",
      "price": 12.00,
      "did_participate": true,
      "num_participants": 3,
      "share_id": $SHARE_ID
    }
  }'


# deployed
curl --include --request PATCH https://bill-splitter-api.herokuapp.com/adjustments/$ID \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "adjustment": {
      "label": "nachos",
      "price": 12.00,
      "did_participate": true,
      "num_participants": 3,
      "share_id": $SHARE_ID
    }
  }'
