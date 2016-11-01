# localhost
curl --include --request GET http://localhost:3000/bills/$BILL_ID/shares/$SHARE_ID/adjustments \
  --header "Authorization: Token token=$TOKEN"


# deployed
curl --include --request GET https://bill-splitter-api.herokuapp.com/bills/$BILL_ID/shares/$SHARE_ID/adjustments \
  --header "Authorization: Token token=$TOKEN"
