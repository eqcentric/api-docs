---
stoplight-id: gxp98yg2dwhk4
tags: [webhook]
---

# Webhook

Use incoming webhooks to get real-time updates

## How Makini uses webhooks
A webhook enables Makini to push real-time notifications to your app. Makini uses HTTPS to send these notifications to your app as a JSON payload. You can then use these notifications to execute actions in your backend systems.

## Webhook events

|   |   |   |   |
|---|:---:|:---:|:---:|
|**Events**|Inserted|Updated|Deleted|
|Sites|√|√|X|
|Assets|√|√|X|
|Purchase orders|√|√|X|
|Work orders|√|√|X|


## Creating a Webhook

You can start receiving event notifications in your app using the steps in this section:

1. Go to Developer Portal > Developers > Webhooks
2. Create a webhook endpoint as an HTTP endpoint (URL) on your server.
3. Handle requests from Makini by parsing event's data and signature verification is applied by Makini.

## Handle webhooks from Makini
Use `secret` from Webhooks page.

### Validate Webhook from Makini by your app

```javascript
import crypto from "crypto";

function validateSHA256Signature(
  secret: string,
  signature: string,
  data: any
) {
  const signatureEncrypted = crypto
    .createHmac("sha256", secret)
    .update(JSON.stringify(data))
    .digest("base64");

  return signature === signatureEncrypted;
}

```