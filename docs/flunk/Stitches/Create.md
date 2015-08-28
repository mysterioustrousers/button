# Create

Creates a new stitch.

## Request

- **Method:** POST
- **URL:** /stitches
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

- **Status:** 201 Created
- **Body:**

```json
{
  "id": Integer,
  "thread_color": String,
  "length": String,
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
           "stitch": {
             "thread_color": String,
             "length": String
           }
         }' \
     "http://www.example.com/stitches"
```