## Register your app

First thing to do is to [sign up](https://app.makini.io/register) and get your account running.

After signing up, you need to create your first application. Select your use case and application type.
The best way to begin is to start with Development Mode and free tier. However, if you already know your usage amount,
you can select a paid plan right away.

Every application requires name and redirect URI. You can change those settings at any time.
Redirect URI is a route in your application that will be used in [OAuth 2.0 protocol](authentication.md) 
to receive authentication code. If you don't have implementation yet, you can use settings for [Postman](postman.md) or 
other development tool.

On the next step you will get your `CLIENT_ID` and `CLIENT_SECRET` which you can use to issue access tokens.
You should only use the secret in backend and never expose it publicly.

Now you are ready to make requests to API.

**Read more**
* [Using Postman to test API](postman.md)
* [API authentication protocol](authentication.md)
