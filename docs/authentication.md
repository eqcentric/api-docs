# Authentication

## A Comprehensive Guide using OAuth2 to generate an Access Token

Makini uses OAuth 2.0 protocol to issue authentication tokens. In short, protocol consists of bellow actions:

### Step 1: Register Your Application

1. Creating an account on Makini Developer Portal.
2. Registering your application and obtaining a client ID and client secret.
3. Specifying a redirect URI (the URL to which the service will redirect after authorization).

### Step 2: Redirect Users to the Authorization Server

Once your application is registered, you can start the OAuth2 authorization flow. Redirect the user to the authorization server with a URL that includes the following parameters:

- `response_type=code`: This specifies that you want to receive an authorization code.
- `client_id`: The client ID obtained during application registration.
- `redirect_uri`: The URI to which the authorization server will send the user after they authorize the application.

Example URL:

```
https://api.makini.io/link/auth?response_type=code&client_id=YOUR_CLIENT_ID&redirect_uri=YOUR_REDIRECT_URI&state=RANDOM_STRING
```

### Step 3: Handle the Authorization Response

After the user grants or denies access, the authorization server will redirect them to the specified redirect URI with the following parameters:

- `code`: The authorization code.
- `state`: The state parameter you provided, which should match the one you sent.

Example redirect URI:

```
https://your-redirect-uri.com/callback?code=AUTHORIZATION_CODE&state=RANDOM_STRING
```

### Step 4: Exchange the Authorization Code for an Access Token

Once you have the authorization code, you need to exchange it for an access token. Make a POST request to the token endpoint with the following parameters:

- `grant_type=authorization_code`: This specifies the type of grant you're using.
- `code`: The authorization code you received.
- `redirect_uri`: The same redirect URI you used in the authorization request.
- `client_id`: Your client ID.
- `client_secret`: Your client secret.

Example request:

```
POST https://api.makini.io/link/token
Content-Type: application/x-www-form-urlencoded

grant_type=authorization_code&code=AUTHORIZATION_CODE&redirect_uri=YOUR_REDIRECT_URI&client_id=YOUR_CLIENT_ID&client_secret=YOUR_CLIENT_SECRET
```

### Step 5: Receive the Access Token

If the request is successful, the authorization server will return a JSON response containing the access token and other information:

```json
{
  "access_token": "ACCESS_TOKEN",
  "token_type": "Bearer",
  "expires_in": 1715701843,
  "refresh_token": "REFRESH_TOKEN"
}
```

> ACCESS_TOKEN expires in 30 days

> REFRESH_TOKEN expires in 31 days

### Step 6: Use the Access Token

You can now use the access token to make authenticated requests to the resource server. Include the token in the Authorization header:

```bash
GET https://api.makini.io/api/eam/sites
Authorization: Bearer ACCESS_TOKEN
```
