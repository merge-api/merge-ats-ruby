# MergeATSClient::DepartmentsApi

All URIs are relative to *https://api.merge.dev/api/ats/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**departments_list**](DepartmentsApi.md#departments_list) | **GET** /departments |  |
| [**departments_retrieve**](DepartmentsApi.md#departments_retrieve) | **GET** /departments/{id} |  |


## departments_list

> <PaginatedDepartmentList> departments_list(x_account_token, opts)



Returns a list of `Department` objects.

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

api_instance = MergeATSClient::DepartmentsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  created_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created after this datetime.
  created_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created before this datetime.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  modified_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified after this datetime.
  modified_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified before this datetime.
  page_size: 56, # Integer | Number of results to return per page.
  remote_id: 'remote_id_example' # String | The API provider's ID for the given object.
}

begin
  
  result = api_instance.departments_list(x_account_token, opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Error when calling DepartmentsApi->departments_list: #{e}"
end
```

#### Using the departments_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedDepartmentList>, Integer, Hash)> departments_list_with_http_info(x_account_token, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.departments_list_with_http_info(x_account_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedDepartmentList>
rescue MergeATSClient::ApiError => e
  puts "Error when calling DepartmentsApi->departments_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **created_after** | **Time** | If provided, will only return objects created after this datetime. | [optional] |
| **created_before** | **Time** | If provided, will only return objects created before this datetime. | [optional] |
| **cursor** | **String** | The pagination cursor value. | [optional] |
| **modified_after** | **Time** | If provided, will only return objects modified after this datetime. | [optional] |
| **modified_before** | **Time** | If provided, will only return objects modified before this datetime. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |
| **remote_id** | **String** | The API provider&#39;s ID for the given object. | [optional] |

### Return type

[**PaginatedDepartmentList**](PaginatedDepartmentList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## departments_retrieve

> <Department> departments_retrieve(x_account_token, id)



Returns a `Department` object with the given `id`.

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

api_instance = MergeATSClient::DepartmentsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 

begin
  
  result = api_instance.departments_retrieve(x_account_token, id)
  p result
rescue MergeATSClient::ApiError => e
  puts "Error when calling DepartmentsApi->departments_retrieve: #{e}"
end
```

#### Using the departments_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Department>, Integer, Hash)> departments_retrieve_with_http_info(x_account_token, id)

```ruby
begin
  
  data, status_code, headers = api_instance.departments_retrieve_with_http_info(x_account_token, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Department>
rescue MergeATSClient::ApiError => e
  puts "Error when calling DepartmentsApi->departments_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **id** | [**String**](.md) |  |  |

### Return type

[**Department**](Department.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

