# MergeATSClient::SelectiveSyncApi

All URIs are relative to *https://api.merge.dev/api/ats/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**selective_sync_configurations_list**](SelectiveSyncApi.md#selective_sync_configurations_list) | **GET** /selective-sync/configurations |  |
| [**selective_sync_configurations_update**](SelectiveSyncApi.md#selective_sync_configurations_update) | **PUT** /selective-sync/configurations |  |
| [**selective_sync_meta_list**](SelectiveSyncApi.md#selective_sync_meta_list) | **GET** /selective-sync/meta |  |


## selective_sync_configurations_list

> <Array<LinkedAccountSelectiveSyncConfiguration>> selective_sync_configurations_list(x_account_token)



Get a linked account's selective syncs.

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

api_instance = MergeATSClient::SelectiveSyncApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.

begin
  
  result = api_instance.selective_sync_configurations_list(x_account_token)
  p result
rescue MergeATSClient::ApiError => e
  puts "Error when calling SelectiveSyncApi->selective_sync_configurations_list: #{e}"
end
```

#### Using the selective_sync_configurations_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<LinkedAccountSelectiveSyncConfiguration>>, Integer, Hash)> selective_sync_configurations_list_with_http_info(x_account_token)

```ruby
begin
  
  data, status_code, headers = api_instance.selective_sync_configurations_list_with_http_info(x_account_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<LinkedAccountSelectiveSyncConfiguration>>
rescue MergeATSClient::ApiError => e
  puts "Error when calling SelectiveSyncApi->selective_sync_configurations_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |

### Return type

[**Array&lt;LinkedAccountSelectiveSyncConfiguration&gt;**](LinkedAccountSelectiveSyncConfiguration.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## selective_sync_configurations_update

> <Array<LinkedAccountSelectiveSyncConfiguration>> selective_sync_configurations_update(x_account_token, linked_account_selective_sync_configuration_list_request)



Replace a linked account's selective syncs.

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

api_instance = MergeATSClient::SelectiveSyncApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
linked_account_selective_sync_configuration_list_request = MergeATSClient::LinkedAccountSelectiveSyncConfigurationListRequest.new({sync_configurations: [MergeATSClient::LinkedAccountSelectiveSyncConfigurationRequest.new({linked_account_conditions: [MergeATSClient::LinkedAccountConditionRequest.new({condition_schema_id: 'condition_schema_id_example', operator: 'operator_example', value: TODO})]})]}) # LinkedAccountSelectiveSyncConfigurationListRequest | 

begin
  
  result = api_instance.selective_sync_configurations_update(x_account_token, linked_account_selective_sync_configuration_list_request)
  p result
rescue MergeATSClient::ApiError => e
  puts "Error when calling SelectiveSyncApi->selective_sync_configurations_update: #{e}"
end
```

#### Using the selective_sync_configurations_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<LinkedAccountSelectiveSyncConfiguration>>, Integer, Hash)> selective_sync_configurations_update_with_http_info(x_account_token, linked_account_selective_sync_configuration_list_request)

```ruby
begin
  
  data, status_code, headers = api_instance.selective_sync_configurations_update_with_http_info(x_account_token, linked_account_selective_sync_configuration_list_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<LinkedAccountSelectiveSyncConfiguration>>
rescue MergeATSClient::ApiError => e
  puts "Error when calling SelectiveSyncApi->selective_sync_configurations_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **linked_account_selective_sync_configuration_list_request** | [**LinkedAccountSelectiveSyncConfigurationListRequest**](LinkedAccountSelectiveSyncConfigurationListRequest.md) |  |  |

### Return type

[**Array&lt;LinkedAccountSelectiveSyncConfiguration&gt;**](LinkedAccountSelectiveSyncConfiguration.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## selective_sync_meta_list

> <PaginatedConditionSchemaList> selective_sync_meta_list(x_account_token, opts)



Get metadata for the conditions available to a linked account.

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

api_instance = MergeATSClient::SelectiveSyncApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  common_model: 'common_model_example', # String | 
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  page_size: 56 # Integer | Number of results to return per page.
}

begin
  
  result = api_instance.selective_sync_meta_list(x_account_token, opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Error when calling SelectiveSyncApi->selective_sync_meta_list: #{e}"
end
```

#### Using the selective_sync_meta_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedConditionSchemaList>, Integer, Hash)> selective_sync_meta_list_with_http_info(x_account_token, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.selective_sync_meta_list_with_http_info(x_account_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedConditionSchemaList>
rescue MergeATSClient::ApiError => e
  puts "Error when calling SelectiveSyncApi->selective_sync_meta_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **common_model** | **String** |  | [optional] |
| **cursor** | **String** | The pagination cursor value. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |

### Return type

[**PaginatedConditionSchemaList**](PaginatedConditionSchemaList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

