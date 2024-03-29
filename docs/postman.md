# Makini Postman Collection

If you're looking for a quick and easy way to get started with the Makini API with no additional code, 
this is the place for you. Postman is a great tool that allows users explore API functionality by 
manually sending API requests and receiving responses. 

We have created a collection of pre-populated HTTP requests that can be sent to the Makini API.

If you are looking for a more in-depth guide and reference for the Makini API, please refer to the 
Makini API reference.

## Getting started

Follow these steps to quickly get started with the Makini API:

1. [Sign up](https://app.makini.io/register) with Makini to get a set of credentials that are required 
   for interacting with the API. [Learn more](sign-up.md)
2. Update Redirect URI in your application settings to `https://oauth.pstmn.io/v1/callback` 
3. Download and install the [Postman app](https://www.postman.com/downloads/).
4. Download the generic collection or use "Download Postman Collection" button in the [Dashboard](https://app.makini.io)
   with credentials predefined.

## Configuration

In order to use the collection, click on `File -> Import` menu or press `Ctrl+O/Cmd+O`.
Select the file and click "Import", the collection will appear in the list.

If you download the collection from Dashboard, it will contain necessary environment variables. Otherwise, 
click on Variables tab and enter your credentials in "Current Value" column.

## Authentication

Select collection in the list and click on "Authorization" tab. Collection already contains the necessary setup for
default authentication process. Click on "Get New Access Token" button to launch Makini Link.

Once you finish authentication, it will redirect you back to Postman and show token information.
Click on "Use Token" button to proceed with testing.

*Note:* On the last step Makini Link will redirect you to Postman URL that will attempt to communicate with 
the application. Make sure you allow that action in your browser.

## Making requests

Select a request type from the collection. By default, each request inherits authorization settings, so no additional
setup is required. Click on "Send" button to dispatch request or use "Body" tab to modify parameters for POST/PUT requests.

For detailed information on API endpoints, use [Makini API reference](../oas3.yml) guide

## Pagination 
We have created a pagination which displays multiple pages of results and creates a url something like this `/api/assets?page=1&per_page=10` . Basically, it appends a `?page=1` and `per_page=10`

Request example:
```
curl --location 'https://api.makini.io/api/assets?page=1&per_page=10' \
--header 'Accept: application/json' \
--header 'Authorization: <API_TOKEN>'
```

Reponse example:
```json
...

  "meta":  {
      "current_page": 2,
      "from": 6,
      "last_page": 10,
      "path": "https://api.makini.io/api/assets",
      "per_page": 5,
      "to": 10,
      "total": 46
  }
...
```

**Read more**
* [Creating the application](sign-up.md)
* [API authentication protocol](authentication.md)
