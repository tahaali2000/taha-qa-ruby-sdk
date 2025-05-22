
# Users Request

## Structure

`UsersRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `username` | `String` | Optional | User's username |
| `age` | `Integer` | Required | User's age |
| `is_active` | `TrueClass \| FalseClass` | Optional | Whether the user is active |
| `rating` | `Float` | Optional | User's rating |
| `signup_date` | `Date` | Required | Signup date |

## Example (as JSON)

```json
{
  "username": "username4",
  "age": 140,
  "isActive": false,
  "rating": 194.34,
  "signupDate": "2016-03-13"
}
```

