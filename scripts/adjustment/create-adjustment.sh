# localhost
curl --include --request POST https://bill-splitter-api.herokuapp.com/bills/$BILL_ID/shares/$SHARE_ID/adjustments \
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
curl --include --request POST https://bill-splitter-api.herokuapp.com/bills/$BILL_ID/shares/$SHARE_ID/adjustments \
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
