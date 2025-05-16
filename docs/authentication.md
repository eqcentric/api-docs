# Authentication

## Overview of the OAuth 2.0 Protocol

Makini uses the OAuth 2.0 protocol to issue authentication tokens. This protocol consists of three main actions:

### Step 1: Initiate Authentication Consent Screen

To initiate the authentication process, you need to provide a button or link in your app that redirects users to the Makini Link. The URL for this redirection is constructed using the following format:
```
GET https://link.makini.io/oauth/authorize?response_type=code&client_id={{CLIENT_ID}}&redirect_uri={{REDIRECT_URI}}
```
This will prompt the user to grant access to your app.

### Step 2: Exchange Authentication Code for Access Token

Once the user grants access, Makini Link will redirect them to the specified Redirect URI with a `code` query parameter. In your backend, you can exchange this code for an access token by sending the following HTTP request:
```
POST https://api.makini.io/link/token
Content-Type: application/x-www-form-urlencoded

grant_type=authorization_code
&code={{CODE}}
&redirect_uri={{REDIRECT_URI}}
&client_id={{CLIENT_ID}}
&client_secret={{CLIENT_SECRET}}
```
This will return an access token that expires in 30 days and a refresh token that expires in 31 days:
```
Content-Type: application/json
Cache-Control: no-store
Pragma: no-cache

{
    "access_token": "{{ACCESS_TOKEN}}",
    "refresh_token": "{{REFRESH_TOKEN}}",
    "token_type": "bearer",
    "expires_in": 1715674414
}
```
### Step 3: Store Authentication Token and Use it to Access Makini API

With the access token in hand, you can use it to make requests to the Makini API by including it in the `Authorization` header:
```
GET https://api.makini.io/api/sites
Accept: application/json
Authorization: Bearer {{ACCESS_TOKEN}}
```
## Refresh Token

To refresh an access token that is near expiration, you can send a request with the refresh token:
```
POST https://api.makini.io/link/token
Content-Type: application/x-www-form-urlencoded

grant_type=refresh_token
&refresh_token={{REFRESH_TOKEN}}
&client_id={{CLIENT_ID}}
&client_secret={{CLIENT_SECRET}} 
```
This will return a new access/refresh token pair.
Refresh tokens expire after 31 days. It is best to setup a cron job with shorter interval to automatically refresh the token.

You can always issue new token pair on Connections page in Makini dashboard.

## Troubleshooting

* If you encounter issues during the authentication process, check that your `client_id` and `client_secret` are correct and that the redirect URI is properly configured and registered in the application settings.
* Make sure to handle errors and exceptions properly in your backend application.
* Consult our documentation and support resources for additional guidance.
