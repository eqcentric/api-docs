# Makini Postman Collection

If you're looking for a quick and easy way to get started with the Makini API with no additional code, 
this is the place for you. Postman is a great tool that allows users explore API functionality by 
manually sending API requests and receiving responses. 

We have created a collection of pre-populated HTTP requests that can be sent to the Makini API.

If you are looking for a more in-depth guide and reference for the Makini API, please refer to the 
Makini API reference.

## Getting started

Follow these steps to quickly get started with the Makini API:

1. [Sign up](https://app.makini.io/register) with Makini to get a set of credentials that are required for interacting with the API.
2. Download and install the Postman app
3. Download the generic collection or use "Download Postman Collection"button in the Dashboard with credentials predefined.

## Configuration

In order to use the collection, click on `File -> Import` menu or press `Ctrl+O/Cmd+O`.
Select the file and click "Import", the collection will appear in the list.

If you download the collection from Dashboard, it will contain necessary environment variables. Otherwise, 
click on Variables tab and enter your credentials in "Current Value" column.

## Authentication

Select collection in the list and click on "Authorization" tab. Collection already contains necessary setup for
default authentication process. Click on "Get New Access Token" button to launch Makini Link.

Once you finish authentication, it will redirect you back to Postman and show token information.
Click on "Use Token" button to proceed with testing.

*Note:* On the last step Makini Link will redirect you to Postman URL, that will attempt to communicate with 
the application. Make sure you allow that action in your browser.

## Making requests

Select a request type from the collection. By default, each request inherits authorization settings, so no additional
setup is required. Click on "Send" button to dispatch request or use "Body" tab to modify parameters for POST/PUT requests.

For detailed information on API endpoints, use [Makini API reference](https://#) guide

**Read more**
* Creating the application
* API authentication protocol

