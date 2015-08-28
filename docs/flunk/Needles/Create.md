# Create

Creates a new needle

## Request

- **Method:** POST
- **URL:** /needles
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

- **Status:** 201 Created
- **Body:**

```json
{
  "id": Integer,
  "sharpness": Integer,
  "length": Integer,
  "created_at": String,
  "updated_at": String
}
```

## Example

```bash
curl -X POST \
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
     "http://www.example.com/needles"
```