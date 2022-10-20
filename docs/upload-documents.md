## Upload Documents

With Makini API, you can upload files by using the POST method in `/documents` end-point that 

**1. Making a POST requests - Create File**
- Attach your desired file
- Set the name of that file
- Hit the POST method

**2. Making a Get requests - See uploaded File**
- Hit the GET method of List documents

**Note:** 
- find `{key}` after using the POST request in response body.
- Use `{key}` to GET specefic updated file. 
Example: ```{{API_URL}}/api/documents/{key}```
