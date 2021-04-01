# MergeATSClient::SyncStatusApi

All URIs are relative to *https://api.merge.dev/api/ats/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**sync_status_retrieve**](SyncStatusApi.md#sync_status_retrieve) | **GET** /sync-status |  |


## sync_status_retrieve

> <SyncStatus> sync_status_retrieve(x_account_token)



Get syncing status.

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

api_instance = MergeATSClient::SyncStatusApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.

begin
  
  result = api_instance.sync_status_retrieve(x_account_token)
  p result
rescue MergeATSClient::ApiError => e
  puts "Error when calling SyncStatusApi->sync_status_retrieve: #{e}"
end
```

#### Using the sync_status_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SyncStatus>, Integer, Hash)> sync_status_retrieve_with_http_info(x_account_token)

```ruby
begin
  
  data, status_code, headers = api_instance.sync_status_retrieve_with_http_info(x_account_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SyncStatus>
rescue MergeATSClient::ApiError => e
  puts "Error when calling SyncStatusApi->sync_status_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |

### Return type

[**SyncStatus**](SyncStatus.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

