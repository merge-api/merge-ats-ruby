# MergeATSClient::AccountTokenApi

All URIs are relative to *https://app.merge.dev/api/ats/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**account_token_retrieve**](AccountTokenApi.md#account_token_retrieve) | **GET** /account-token/{public_token} | 



## account_token_retrieve

> AccountToken account_token_retrieve(production_key, public_token)



Returns the account token for the end user with the provided public token.

### Example

```ruby
# load the gem
require 'merge_ats_client'
# setup authorization
MergeATSClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = MergeATSClient::AccountTokenApi.new
production_key = 'production_key_example' # String | The requesting organization's production key.
public_token = 'public_token_example' # String | 

begin
  result = api_instance.account_token_retrieve(production_key, public_token)
  p result
rescue MergeATSClient::ApiError => e
  puts "Exception when calling AccountTokenApi->account_token_retrieve: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **production_key** | **String**| The requesting organization&#39;s production key. | 
 **public_token** | **String**|  | 

### Return type

[**AccountToken**](AccountToken.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

