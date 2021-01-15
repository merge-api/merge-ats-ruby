# MergeATSClient::DepartmentsApi

All URIs are relative to *https://app.merge.dev/api/ats/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**departments_list**](DepartmentsApi.md#departments_list) | **GET** /departments | 
[**departments_retrieve**](DepartmentsApi.md#departments_retrieve) | **GET** /departments/{id} | 



## departments_list

> PaginatedDepartmentList departments_list(opts)



Returns a list of `Department` objects.

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

api_instance = MergeATSClient::DepartmentsApi.new
opts = {
  created_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | If provided, will only return objects created after this datetime.
  created_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | If provided, will only return objects created before this datetime.
  cursor: 56, # Integer | The pagination cursor value.
  modified_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | If provided, will only return objects modified after this datetime.
  modified_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | If provided, will only return objects modified before this datetime.
  page_size: 56, # Integer | Number of results to return per page.
  remote_id: 'remote_id_example' # String | The API provider's ID for the given object.
}

begin
  result = api_instance.departments_list(opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Exception when calling DepartmentsApi->departments_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **created_after** | **DateTime**| If provided, will only return objects created after this datetime. | [optional] 
 **created_before** | **DateTime**| If provided, will only return objects created before this datetime. | [optional] 
 **cursor** | **Integer**| The pagination cursor value. | [optional] 
 **modified_after** | **DateTime**| If provided, will only return objects modified after this datetime. | [optional] 
 **modified_before** | **DateTime**| If provided, will only return objects modified before this datetime. | [optional] 
 **page_size** | **Integer**| Number of results to return per page. | [optional] 
 **remote_id** | **String**| The API provider&#39;s ID for the given object. | [optional] 

### Return type

[**PaginatedDepartmentList**](PaginatedDepartmentList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## departments_retrieve

> Department departments_retrieve(id, opts)



Returns a `Department` object with the given `id`.

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

api_instance = MergeATSClient::DepartmentsApi.new
id = 'id_example' # String | 
opts = {
  x_account_token: 'x_account_token_example' # String | Token identifying the end user.
}

begin
  result = api_instance.departments_retrieve(id, opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Exception when calling DepartmentsApi->departments_retrieve: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **x_account_token** | **String**| Token identifying the end user. | [optional] 

### Return type

[**Department**](Department.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

