# Authentication - Client credentials

## Basic process

Makini uses OAuth 2.0 protocol to issue authentication tokens.

**1.** Requesting a Token

The application sends a request to the authorization server's token endpoint. The request includes:

- grant_type: Set to client_credentials
- client_id and client_secret: Used for authentication

```
POST https://api.makini.io/link/token
Content-Type: application/json
Accept: application/json
{
    "grant_type": "client_credentials",
    "client_id": "{{CLIENT_ID}}",
    "client_secret": "{{CLIENT_SECRET}}"
}
```

**2.** Accessing Resources

The application includes the access token in the Authorization header of each request it makes to protected APIs.

Example:

```
GET https://api.makini.io/api/system/connections HTTP/1.1
Host: api.makini.io
Accept: application/json
Authorization: Bearer {{API_TOKEN}}
```

[API reference](../oas3_system.json)
