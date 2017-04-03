# README

Specification:
* Ruby version: 2.4.0

* Rails version: 5.0.2

Routes configured:

Verb    URI Pattern
GET     /api/tags/:type/:id
DELETE  /api/tags/:type/:id
GET     /api/tags(.:format)
POST    /api/tags(.:format)
GET     /api/stats(.:format)

Gems used:

1. [UUID](https://github.com/fnando/ar-uuid): For making id as uuid
2. [jsonapi-resources](https://github.com/cerebris/jsonapi-resources): For following JSON API standard

Since, API follows JSON API standard, Request body should like this:

```
POST /api/tags HTTP/1.1
Content-Type: application/vnd.api+json

{
  "data": {
    "type": "tags",
    "attributes": {
      "entity-type": "radical",
      "tags": ["one", "two","three"]
    }
  }
}
```

