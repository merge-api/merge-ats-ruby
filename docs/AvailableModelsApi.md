# MergeATSClient::AvailableModelsApi

All URIs are relative to *https://api.merge.dev/api/ats/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**available_models_retrieve**](AvailableModelsApi.md#available_models_retrieve) | **GET** /available-models |  |


## available_models_retrieve

> <AvailableActionsSerialzier> available_models_retrieve(x_account_token)



Returns a list of models and actions available for an account.

### Examples

```ruby
require 'time'
require 'merge_ats_client'
# setup authorization
MergeATSClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = MergeATSClient::AvailableModelsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.

begin
  
  result = api_instance.available_models_retrieve(x_account_token)
  p result
rescue MergeATSClient::ApiError => e
  puts "Error when calling AvailableModelsApi->available_models_retrieve: #{e}"
end
```

#### Using the available_models_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AvailableActionsSerialzier>, Integer, Hash)> available_models_retrieve_with_http_info(x_account_token)

```ruby
begin
  
  data, status_code, headers = api_instance.available_models_retrieve_with_http_info(x_account_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AvailableActionsSerialzier>
rescue MergeATSClient::ApiError => e
  puts "Error when calling AvailableModelsApi->available_models_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |

### Return type

[**AvailableActionsSerialzier**](AvailableActionsSerialzier.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

