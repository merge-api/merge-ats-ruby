# MergeATSClient::RegenerateKeyApi

All URIs are relative to *https://api.merge.dev/api/ats/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**regenerate_key_create**](RegenerateKeyApi.md#regenerate_key_create) | **POST** /regenerate-key |  |


## regenerate_key_create

> <RemoteKey> regenerate_key_create(remote_key_for_regeneration_request)



Exchange remote keys.

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

api_instance = MergeATSClient::RegenerateKeyApi.new
remote_key_for_regeneration_request = MergeATSClient::RemoteKeyForRegenerationRequest.new({name: 'Remote Deployment Key 1'}) # RemoteKeyForRegenerationRequest | 

begin
  
  result = api_instance.regenerate_key_create(remote_key_for_regeneration_request)
  p result
rescue MergeATSClient::ApiError => e
  puts "Error when calling RegenerateKeyApi->regenerate_key_create: #{e}"
end
```

#### Using the regenerate_key_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoteKey>, Integer, Hash)> regenerate_key_create_with_http_info(remote_key_for_regeneration_request)

```ruby
begin
  
  data, status_code, headers = api_instance.regenerate_key_create_with_http_info(remote_key_for_regeneration_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoteKey>
rescue MergeATSClient::ApiError => e
  puts "Error when calling RegenerateKeyApi->regenerate_key_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remote_key_for_regeneration_request** | [**RemoteKeyForRegenerationRequest**](RemoteKeyForRegenerationRequest.md) |  |  |

### Return type

[**RemoteKey**](RemoteKey.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json

