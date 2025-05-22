
# Getting Started with Test API

## Install the Package

Install the gem from the command line:

```bash
gem install taha-qa-sdk -v 1.2.3
```

Or add the gem to your Gemfile and run `bundle`:

```ruby
gem 'taha-qa-sdk', '1.2.3'
```

For additional gem details, see the [RubyGems page for the taha-qa-sdk gem](https://rubygems.org/gems/taha-qa-sdk/versions/1.2.3).

## Test the SDK

To run the tests, navigate to the root directory of the SDK in your terminal and execute the following command:

```
rake
```

## Initialize the API Client

**_Note:_** Documentation for the client can be found [here.](https://www.github.com/tahaali2000/taha-qa-ruby-sdk/tree/1.2.3/doc/client.md)

The following parameters are configurable for the API Client:

| Parameter | Type | Description |
|  --- | --- | --- |
| default_host | `String` | *Default*: `'www.example.com'` |
| environment | `Environment` | The API environment. <br> **Default: `Environment.PRODUCTION`** |
| connection | `Faraday::Connection` | The Faraday connection object passed by the SDK user for making requests |
| adapter | `Faraday::Adapter` | The Faraday adapter object passed by the SDK user for performing http requests |
| timeout | `Float` | The value to use for connection timeout. <br> **Default: 60** |
| max_retries | `Integer` | The number of times to retry an endpoint call if it fails. <br> **Default: 0** |
| retry_interval | `Float` | Pause in seconds between retries. <br> **Default: 1** |
| backoff_factor | `Float` | The amount to multiply each successive retry's interval amount by in order to provide backoff. <br> **Default: 2** |
| retry_statuses | `Array` | A list of HTTP statuses to retry. <br> **Default: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524]** |
| retry_methods | `Array` | A list of HTTP methods to retry. <br> **Default: %i[get put]** |
| http_callback | `HttpCallBack` | The Http CallBack allows defining callables for pre and post API calls. |

The API client can be initialized as follows:

```ruby
client = TestApi::Client.new(
  environment: Environment::PRODUCTION,
  default_host: 'www.example.com'
)
```

## List of APIs

* [API](https://www.github.com/tahaali2000/taha-qa-ruby-sdk/tree/1.2.3/doc/controllers/api.md)

## SDK Infrastructure

### HTTP

* [HttpResponse](https://www.github.com/tahaali2000/taha-qa-ruby-sdk/tree/1.2.3/doc/http-response.md)
* [HttpRequest](https://www.github.com/tahaali2000/taha-qa-ruby-sdk/tree/1.2.3/doc/http-request.md)

### Utilities

* [ApiHelper](https://www.github.com/tahaali2000/taha-qa-ruby-sdk/tree/1.2.3/doc/api-helper.md)
* [DateTimeHelper](https://www.github.com/tahaali2000/taha-qa-ruby-sdk/tree/1.2.3/doc/date-time-helper.md)

