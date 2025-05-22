# API

```ruby
client_controller = client.client
```

## Class Name

`APIController`

## Methods

* [Getusers](../../doc/controllers/api.md#getusers)
* [Createanewuser](../../doc/controllers/api.md#createanewuser)


# Getusers

Returns a list of users, optionally filtered by search.

```ruby
def getusers(search: nil,
             limit: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `search` | `String` | Query, Optional | Filter users by search term |
| `limit` | `Integer` | Query, Optional | Limit the number of users returned |

## Response Type

[`Array<UsersResponse>`](../../doc/models/users-response.md)

## Example Usage

```ruby
result = client_controller.getusers
```


# Createanewuser

Creates a user with default values if not provided.

```ruby
def createanewuser(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`UsersRequest`](../../doc/models/users-request.md) | Body, Required | - |

## Response Type

[`UsersResponse1`](../../doc/models/users-response-1.md)

## Example Usage

```ruby
body = UsersRequest.new(
  2,
  Date.iso8601('2016-03-13')
)

result = client_controller.createanewuser(body)
```

