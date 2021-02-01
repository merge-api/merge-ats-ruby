# MergeATSClient::EeocsApi

All URIs are relative to *https://api.merge.dev/api/ats/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**eeocs_list**](EeocsApi.md#eeocs_list) | **GET** /eeocs |  |
| [**eeocs_retrieve**](EeocsApi.md#eeocs_retrieve) | **GET** /eeocs/{id} |  |


## eeocs_list

> <PaginatedEEOCList> eeocs_list(x_account_token, opts)



Returns a list of `EEOC` objects.

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

api_instance = MergeATSClient::EeocsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  candidate_id: TODO, # String | If provided, will only return EEOC info for this candidate.
  created_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created after this datetime.
  created_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created before this datetime.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  expand: 'candidate', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  modified_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified after this datetime.
  modified_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified before this datetime.
  page_size: 56, # Integer | Number of results to return per page.
  remote_id: 'remote_id_example' # String | The API provider's ID for the given object.
}

begin
  
  result = api_instance.eeocs_list(x_account_token, opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Error when calling EeocsApi->eeocs_list: #{e}"
end
```

#### Using the eeocs_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedEEOCList>, Integer, Hash)> eeocs_list_with_http_info(x_account_token, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.eeocs_list_with_http_info(x_account_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedEEOCList>
rescue MergeATSClient::ApiError => e
  puts "Error when calling EeocsApi->eeocs_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **candidate_id** | [**String**](.md) | If provided, will only return EEOC info for this candidate. | [optional] |
| **created_after** | **Time** | If provided, will only return objects created after this datetime. | [optional] |
| **created_before** | **Time** | If provided, will only return objects created before this datetime. | [optional] |
| **cursor** | **String** | The pagination cursor value. | [optional] |
| **expand** | **String** | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] |
| **modified_after** | **Time** | If provided, will only return objects modified after this datetime. | [optional] |
| **modified_before** | **Time** | If provided, will only return objects modified before this datetime. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |
| **remote_id** | **String** | The API provider&#39;s ID for the given object. | [optional] |

### Return type

[**PaginatedEEOCList**](PaginatedEEOCList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## eeocs_retrieve

> <EEOC> eeocs_retrieve(x_account_token, id, opts)



Returns an `EEOC` object with the given `id`.

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

api_instance = MergeATSClient::EeocsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 
opts = {
  expand: 'candidate' # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
}

begin
  
  result = api_instance.eeocs_retrieve(x_account_token, id, opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Error when calling EeocsApi->eeocs_retrieve: #{e}"
end
```

#### Using the eeocs_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EEOC>, Integer, Hash)> eeocs_retrieve_with_http_info(x_account_token, id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.eeocs_retrieve_with_http_info(x_account_token, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EEOC>
rescue MergeATSClient::ApiError => e
  puts "Error when calling EeocsApi->eeocs_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **id** | [**String**](.md) |  |  |
| **expand** | **String** | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] |

### Return type

[**EEOC**](EEOC.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

