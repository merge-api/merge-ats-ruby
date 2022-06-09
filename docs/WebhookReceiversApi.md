# MergeATSClient::WebhookReceiversApi

All URIs are relative to *https://api.merge.dev/api/ats/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**webhook_receivers_create**](WebhookReceiversApi.md#webhook_receivers_create) | **POST** /webhook-receivers |  |
| [**webhook_receivers_list**](WebhookReceiversApi.md#webhook_receivers_list) | **GET** /webhook-receivers |  |


## webhook_receivers_create

> <WebhookReceiver> webhook_receivers_create(x_account_token, webhook_receiver_request)



Creates a `WebhookReceiver` object with the given values.

### Examples

```ruby
require 'time'
require 'merge_ats_client'
# setup authorization
MergeATSClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['tokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['tokenAuth'] = 'Bearer'
end

api_instance = MergeATSClient::WebhookReceiversApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
webhook_receiver_request = MergeATSClient::WebhookReceiverRequest.new({event: 'event_example', is_active: false}) # WebhookReceiverRequest | 

begin
  
  result = api_instance.webhook_receivers_create(x_account_token, webhook_receiver_request)
  p result
rescue MergeATSClient::ApiError => e
  puts "Error when calling WebhookReceiversApi->webhook_receivers_create: #{e}"
end
```

#### Using the webhook_receivers_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookReceiver>, Integer, Hash)> webhook_receivers_create_with_http_info(x_account_token, webhook_receiver_request)

```ruby
begin
  
  data, status_code, headers = api_instance.webhook_receivers_create_with_http_info(x_account_token, webhook_receiver_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookReceiver>
rescue MergeATSClient::ApiError => e
  puts "Error when calling WebhookReceiversApi->webhook_receivers_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **webhook_receiver_request** | [**WebhookReceiverRequest**](WebhookReceiverRequest.md) |  |  |

### Return type

[**WebhookReceiver**](WebhookReceiver.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## webhook_receivers_list

> <Array<WebhookReceiver>> webhook_receivers_list(x_account_token)



Returns a list of `WebhookReceiver` objects.

### Examples

```ruby
require 'time'
require 'merge_ats_client'
# setup authorization
MergeATSClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['tokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['tokenAuth'] = 'Bearer'
end

api_instance = MergeATSClient::WebhookReceiversApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.

begin
  
  result = api_instance.webhook_receivers_list(x_account_token)
  p result
rescue MergeATSClient::ApiError => e
  puts "Error when calling WebhookReceiversApi->webhook_receivers_list: #{e}"
end
```

#### Using the webhook_receivers_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<WebhookReceiver>>, Integer, Hash)> webhook_receivers_list_with_http_info(x_account_token)

```ruby
begin
  
  data, status_code, headers = api_instance.webhook_receivers_list_with_http_info(x_account_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<WebhookReceiver>>
rescue MergeATSClient::ApiError => e
  puts "Error when calling WebhookReceiversApi->webhook_receivers_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |

### Return type

[**Array&lt;WebhookReceiver&gt;**](WebhookReceiver.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

