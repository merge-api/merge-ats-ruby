# MergeATSClient::SyncStatusApi

All URIs are relative to *https://api.merge.dev/api/ats/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**sync_status_list**](SyncStatusApi.md#sync_status_list) | **GET** /sync-status |  |
| [**sync_status_resync_create**](SyncStatusApi.md#sync_status_resync_create) | **POST** /sync-status/resync |  |


## sync_status_list

> <PaginatedSyncStatusList> sync_status_list(x_account_token, opts)



Get syncing status.

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

api_instance = MergeATSClient::SyncStatusApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  cursor: 56, # Integer | The pagination cursor value.
  page_size: 56 # Integer | Number of results to return per page.
}

begin
  
  result = api_instance.sync_status_list(x_account_token, opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Error when calling SyncStatusApi->sync_status_list: #{e}"
end
```

#### Using the sync_status_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedSyncStatusList>, Integer, Hash)> sync_status_list_with_http_info(x_account_token, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.sync_status_list_with_http_info(x_account_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedSyncStatusList>
rescue MergeATSClient::ApiError => e
  puts "Error when calling SyncStatusApi->sync_status_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **cursor** | **Integer** | The pagination cursor value. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |

### Return type

[**PaginatedSyncStatusList**](PaginatedSyncStatusList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## sync_status_resync_create

> <SyncStatus> sync_status_resync_create(x_account_token)



Force re-sync of all models. This is only available for organizations on Merge's Grow and Expand plans.

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

api_instance = MergeATSClient::SyncStatusApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.

begin
  
  result = api_instance.sync_status_resync_create(x_account_token)
  p result
rescue MergeATSClient::ApiError => e
  puts "Error when calling SyncStatusApi->sync_status_resync_create: #{e}"
end
```

#### Using the sync_status_resync_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SyncStatus>, Integer, Hash)> sync_status_resync_create_with_http_info(x_account_token)

```ruby
begin
  
  data, status_code, headers = api_instance.sync_status_resync_create_with_http_info(x_account_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SyncStatus>
rescue MergeATSClient::ApiError => e
  puts "Error when calling SyncStatusApi->sync_status_resync_create_with_http_info: #{e}"
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

