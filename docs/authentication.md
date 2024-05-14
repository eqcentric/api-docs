# Authentication

## Basic process

Makini uses OAuth 2.0 protocol to issue authentication tokens. In short, protocol consists of 3 actions:

**1.** Initiate authentication consent screen for your app users.

For this step you need to place a button or a link in your app with URL pointing to Makini Link.
The URL is constructed using following format: `https://link.makini.io/oauth/authorize?response_type=code&client_id={{CLIENT_ID}}&redirect_uri={{REDIRECT_URI}}`

**2.** Exchange authentication code to access token

Once access is provided, Makini Link will redirect user to specified Redirect URI with `code` query parameter.
In your backend you can exchange the code to access token by issuing following HTTP request:

```
POST https://api.makini.io/link/token
Content-Type: application/x-www-form-urlencoded

grant_type=authorization_code
&code={{CODE}}
&redirect_uri={{REDIRECT_URI}}
&client_id={{CLIENT_ID}}
&client_secret={{CLIENT_SECRET}}
```

In the response, you will receive an access token (expires in 30 days), and a refresh token (expires in 31 days)

```
Content-Type: application/json
Cache-Control: no-store
Pragma: no-cache

{
    "access_token": "{{ACCESS_TOKEN}}",
    "refresh_token": "{{REFRESH_TOKEN}}",
    "token_type": "bearer",
    "expires_in": "1715674414"
}
```

**3.** Store authentication token and use it to access Makini API

Now you can use the token in `Authorization` header and make requests to API

```
GET https://api.makini.io/api/sites
Accept: application/json
Authorization: Bearer {{ACCESS_TOKEN}}
```
