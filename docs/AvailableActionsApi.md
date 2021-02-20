# MergeATSClient::AvailableActionsApi

All URIs are relative to *https://api.merge.dev/api/ats/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**available_actions_retrieve**](AvailableActionsApi.md#available_actions_retrieve) | **GET** /available-actions |  |


## available_actions_retrieve

> <AvailableActions> available_actions_retrieve(x_account_token, opts)



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

api_instance = MergeATSClient::AvailableActionsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  include_remote_data: true # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
}

begin
  
  result = api_instance.available_actions_retrieve(x_account_token, opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Error when calling AvailableActionsApi->available_actions_retrieve: #{e}"
end
```

#### Using the available_actions_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AvailableActions>, Integer, Hash)> available_actions_retrieve_with_http_info(x_account_token, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.available_actions_retrieve_with_http_info(x_account_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AvailableActions>
rescue MergeATSClient::ApiError => e
  puts "Error when calling AvailableActionsApi->available_actions_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |

### Return type

[**AvailableActions**](AvailableActions.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

