// env
export ZUORA_API=https://rest.sandbox.na.zuora.com

// OAuth token
curl -X POST -H "Content-Type: application/x-www-form-urlencoded" -d \
"client_id=804e4215-c8b1-4207-951d-037fbe030c05" \
--data-urlencode "client_secret=t7PBdEQOYetFMr1iXlstwJSDxykCuL5a1OdpO+S=" \
-d "grant_type=client_credentials" \
"${ZUORA_API}/oauth/token" | jq

invoice#: INV00055360
invoiceId: 8ac683137f54f394017f64d87dca5011
memo#: CM00000011


curl -X POST -H "Authorization: Bearer 5b00250dce9844d7b76c11fa29972a18" -H "Content-Type: application/json" -d '{
    "queryString": "select ID from paymentpart" 
}' "${ZUORA_API}/v1/action/query" | jq

curl -X GET -H "Authorization: Bearer 84ef1beae1c0444e81010ad9f1ff9d3b" -H "Content-Type: application/json"  \
"${ZUORA_API}/v1/invoices/8ac68a1b7f55067e017f569a97032155/items" | jq

curl -X GET -H "Authorization: Bearer 220daeb4087f49e2a0910973704cb885" -H "Content-Type: application/json"  \
"${ZUORA_API}/v1/payment-methods/8ac6881f800439f401800a5887225b48" | jq

curl -X GET -H "Authorization: Bearer 5bbe0f6462114475a439e57a2e1bab03" -H "Content-Type: application/json"  \
"${ZUORA_API}/v1/object/invoice/8ac683137f54f394017f64d87dca5011" | jq


curl -X GET -H "Authorization: Bearer 98efddee0b0c4ed4871cb59971b07e00" -H "Content-Type: application/json"  -H "zuora-version: 207.0"  \
"${ZUORA_API}/v1/invoices/8ac68a1b7f55067e017f569a97032155/application-parts" | jq

220daeb4087f49e2a0910973704cb885

curl -X 'GET' \
  'https://payments.us-east-1.qa.ops.simplisafe.com/release/v1/paymentMethod/user/23022022/methods' \
  -H 'accept: application/json' | jq


curl -X GET -H "Authorization: Bearer 7ffecc275b65453487970dfdca0eb512" -H "Content-Type: application/json" \
"${ZUORA_API}/v1/payments/8ac691a07fc0dc1e017fcc7f52124318" | jq


curl -X GET -H "Authorization: Bearer 49cceea403c64531a200ea8ffaf5e78e" -H "Content-Type: application/json"  -H "zuora-version: 296.0"  \
"${ZUORA_API}/v1/creditmemos/8ac683137f97aa48017f983d110c0dd6" | jq


curl -X GET -H "Authorization: Bearer 7ffecc275b65453487970dfdca0eb512" -H "Content-Type: application/json" \
"${ZUORA_API}/v1/object/invoice/8ac68a1b7f55067e017f569a97032155" | jq


curl -X POST -H "Authorization: Bearer 8dc0634d31144c9eb3a6b3b70b448eb4" -H "Content-Type: application/json" \
-d '{
    "queryString": "select AccountNumber, Id, ss_uid__c from Account"
}' \
"${ZUORA_API}/v1/action/query" | jq


curl -X GET -H "Authorization: Bearer 7cfe141607664aa4abb984654679b294" -H "Content-Type: application/json" \
"${ZUORA_API}/v1/payment-methods/credit-cards/accounts/8ac6804a7f1c0e96017f278454a71f1c" | jq


curl -X POST -H "Authorization: Bearer 4f9879739d64485f839ec767f61d939a" -H "Content-Type: application/json" -d '{
    "queryString": "select AccountNumber, Id, ss_uid__c from Account where ss_uid__c = '\''924513'\'' and parentId is null" 
}' "${ZUORA_API}/v1/action/query" | jq


# "query": "select AccountNumber, Id, ss_uid__c, parentId from Account where ss_uid__c = '924513' and parentId is null"

curl -X POST -H "Authorization: Bearer 2791d95487f6488da088165dede37e8c" -H "Content-Type: application/json" -d '{
    "compression": "NONE", 
    "output": {
        "target": "S3"
    }, 
    "outputFormat": "JSON", 
    "query": "select AccountNumber, Id, ss_uid__c, parentId from Account where parentId is not null" 
}' "${ZUORA_API}/query/jobs" | jq

ss_uid__c: '924513' without CC
ss_uid__c: 322022022 with CC

curl -X GET -H "Authorization: Bearer 2791d95487f6488da088165dede37e8c" -H "Content-Type: application/json" "${ZUORA_API}/query/jobs/cc520fdf-f8c3-4e43-99b2-e40afd544cf0" | jq


without credit card: 8ac6804a7f1c0e96017f278454a71f1c
with credit card: 8ac680ab7f1c0e94017f21f196de02a6
AccountNumber=81d2e235-48ad-4d10-ba23-3c37f116dd24
