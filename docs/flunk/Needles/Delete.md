# Delete

Deletes a new needle.

## Request

- **Method:** DELETE
- **URL:** /needles/:id.json

## Response

- **Status:** 204 No content

## Example

```bash
curl -X DELETE \
     -H 'CONTENT_TYPE: application/json' \
     -H 'ACCEPT: application/json' \
     -H 'HTTP_AUTHORIZATION: Basic dXNlcm5hbWU6cGFzc3dvcmQ=' \
     -H 'Content-Type: application/json' \
     -H 'Accept: application/json' \
     "http://www.example.com/needles/:id.json"
```