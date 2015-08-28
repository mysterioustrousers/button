# Update

Updates a new stitch.

## Request

- **Method:** PUT
- **URL:** /stitches/:id
- **Body:**

```json
{
  "stitch": {
    "thread_color": String,
    "length": String
  }
}
```

## Response

- **Status:** 204 No content

## Example

```bash
curl -X PUT \
     -H 'CONTENT_TYPE: application/json' \
     -H 'ACCEPT: application/json' \
     -H 'HTTP_AUTHORIZATION: Basic dXNlcm5hbWU6cGFzc3dvcmQ=' \
     -H 'Content-Type: application/json' \
     -H 'Accept: application/json' \
     -d '{
           "stitch": {
             "thread_color": String,
             "length": String
           }
         }' \
     "http://www.example.com/stitches/:id"
```