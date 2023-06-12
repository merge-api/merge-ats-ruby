# MergeATSClient::ForceResyncApi

All URIs are relative to *https://api.merge.dev/api/ats/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**sync_status_resync_create**](ForceResyncApi.md#sync_status_resync_create) | **POST** /sync-status/resync |  |


## sync_status_resync_create

> <Array<SyncStatus>> sync_status_resync_create(x_account_token)



Force re-sync of all models. This is available for all organizations via the dashboard. Force re-sync is also available programmatically via API for monthly, quarterly, and highest sync frequency customers on the Core, Professional, or Enterprise plans. Doing so will consume a sync credit for the relevant linked account.

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

api_instance = MergeATSClient::ForceResyncApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.

begin
  
  result = api_instance.sync_status_resync_create(x_account_token)
  p result
rescue MergeATSClient::ApiError => e
  puts "Error when calling ForceResyncApi->sync_status_resync_create: #{e}"
end
```

#### Using the sync_status_resync_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SyncStatus>>, Integer, Hash)> sync_status_resync_create_with_http_info(x_account_token)

```ruby
begin
  
  data, status_code, headers = api_instance.sync_status_resync_create_with_http_info(x_account_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SyncStatus>>
rescue MergeATSClient::ApiError => e
  puts "Error when calling ForceResyncApi->sync_status_resync_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |

### Return type

[**Array&lt;SyncStatus&gt;**](SyncStatus.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

