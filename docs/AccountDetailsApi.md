# MergeATSClient::AccountDetailsApi

All URIs are relative to *https://api.merge.dev/api/ats/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**account_details_retrieve**](AccountDetailsApi.md#account_details_retrieve) | **GET** /account-details |  |


## account_details_retrieve

> <AccountDetails> account_details_retrieve(x_account_token)



Get details for a linked account.

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

api_instance = MergeATSClient::AccountDetailsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.

begin
  
  result = api_instance.account_details_retrieve(x_account_token)
  p result
rescue MergeATSClient::ApiError => e
  puts "Error when calling AccountDetailsApi->account_details_retrieve: #{e}"
end
```

#### Using the account_details_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountDetails>, Integer, Hash)> account_details_retrieve_with_http_info(x_account_token)

```ruby
begin
  
  data, status_code, headers = api_instance.account_details_retrieve_with_http_info(x_account_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountDetails>
rescue MergeATSClient::ApiError => e
  puts "Error when calling AccountDetailsApi->account_details_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |

### Return type

[**AccountDetails**](AccountDetails.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

