---
stoplight-id: gxp98yg2dwhk4
tags: [webhook]
---

## How Makini uses webhooks
Makini uses HTTPS to send these notifications to your app as a JSON payload. You can then use these notifications to execute actions in your backend systems.

## Webhook events

|   |   |   |   |
|---|:---:|:---:|:---:|
|**Events**|Inserted/Updated|Deleted|
|Connection statuses|√|√|
|Assets|√|X|
|Sites|√|X|
|Work orders|√|X|
|Purchase orders|√|X|
|Materials|√|X|
|Locations|√|X|


## Creating a Webhook

You can start receiving event notifications in your app using the steps in this section:

1. Go to Developer Portal > Developers > Webhooks
2. Create a webhook endpoint as an HTTP endpoint (URL) on your server.
3. Handle requests from Makini by parsing event's data and signature verification is applied by Makini.

## Handle webhooks from Makini
To authenticate our webhooks through signature verification, follow these steps implemented in various languages below. Assume the custom header carrying the webhook signature is `X-Webhook-Signature` (or `x-webhook-signature`). The required steps are as follows:
1. Retrieve the raw body of the request.
2. Extract the value of the signature header.
3. Calculate the HMAC of the raw body using the SHA-256 hash function and the secret.
4. Compare the calculated HMAC with the one provided in the X-Webhook-Signature signature header, ensuring both values use the same encoding."

### Nodejs Example (Express)

```javascript
import crypto from "crypto";
const SECRET_KEY = '{YOUR_SECRET_KEY}'

function validateSHA256Signature(secret, signature, data) {
    const signatureEncrypted = crypto
        .createHmac("sha256", secret)
        .update(JSON.stringify(data))
        .digest("hex");

    return signature === signatureEncrypted;
}
app.post('/webhook', (req, res) => {
    const signature = req.header('X-Webhook-Signature') ?? req.header('x-webhook-signature')
    res.send({
        signature: signature,
        signature_virified: validateSHA256Signature(SECRET_KEY, signature, req.body)
    })
})

```

### Python Example (Flask)
```python
API_SECRET_KEY = '{YOUR_SECRET_KEY}'

def verify_webhook(data, hmac_header):
    # Calculate HMAC
    digest = hmac.new(API_SECRET_KEY.encode('utf-8'), data, digestmod=hashlib.sha256).digest()
    computed_hmac = digest.hex().encode('utf-8')

    return hmac.compare_digest(computed_hmac, hmac_header.encode('utf-8'))

@app.route('/webhook', methods=['POST'])
def handle_webhook():
    # Get raw body
    data = request.get_data()
    # Compare HMACs
    signature = request.headers.get('X-Webhook-Signature') or request.headers.get('x-webhook-signature')
    return ({
        "signature_verified": verify_webhook(data, signature),
        "signature": signature,
        "data": data.decode()
      }, 
    200)
```