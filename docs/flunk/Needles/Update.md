# Update

Updates a new needle.

## Request

- **Method:** PUT
- **URL:** /needles/:id
- **Body:**

```json
{
  "needle": {
    "sharpness": Integer,
    "length": Integer
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
           "needle": {
             "sharpness": Integer,
             "length": Integer
           }
         }' \
     "http://www.example.com/needles/:id"
```