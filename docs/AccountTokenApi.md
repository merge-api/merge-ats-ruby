# MergeATSClient::AccountTokenApi

All URIs are relative to *https://api.merge.dev/api/ats/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**account_token_retrieve**](AccountTokenApi.md#account_token_retrieve) | **GET** /account-token/{public_token} |  |


## account_token_retrieve

> <AccountToken> account_token_retrieve(public_token)



Returns the account token for the end user with the provided public token.

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

api_instance = MergeATSClient::AccountTokenApi.new
public_token = 'public_token_example' # String | 

begin
  
  result = api_instance.account_token_retrieve(public_token)
  p result
rescue MergeATSClient::ApiError => e
  puts "Error when calling AccountTokenApi->account_token_retrieve: #{e}"
end
```

#### Using the account_token_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountToken>, Integer, Hash)> account_token_retrieve_with_http_info(public_token)

```ruby
begin
  
  data, status_code, headers = api_instance.account_token_retrieve_with_http_info(public_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountToken>
rescue MergeATSClient::ApiError => e
  puts "Error when calling AccountTokenApi->account_token_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **public_token** | **String** |  |  |

### Return type

[**AccountToken**](AccountToken.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

