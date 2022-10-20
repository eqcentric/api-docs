## Upload Documents

With Makini API, you can upload files by using the POST method in `/documents` end-point

**1. Making a POST request - Create File**
- Attach your desired file
- Set the name of that file
- Hit the POST method

**2. Making a Get request - See uploaded File**
- Hit the GET method to List documents

**Note:** 
- Find {key} after using the POST request in the response body.
- Use {key} to GET specific updated file. 
Example: {{API_URL}}/api/documents/{key}
