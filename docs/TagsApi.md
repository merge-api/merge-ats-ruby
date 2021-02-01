# MergeATSClient::TagsApi

All URIs are relative to *https://api.merge.dev/api/ats/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tags_list**](TagsApi.md#tags_list) | **GET** /tags | 



## tags_list

> PaginatedTagList tags_list(x_account_token, opts)



Returns a list of `Tag` objects.

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

api_instance = MergeATSClient::TagsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  created_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | If provided, will only return objects created after this datetime.
  created_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | If provided, will only return objects created before this datetime.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  modified_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | If provided, will only return objects modified after this datetime.
  modified_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | If provided, will only return objects modified before this datetime.
  page_size: 56, # Integer | Number of results to return per page.
  remote_id: 'remote_id_example' # String | The API provider's ID for the given object.
}

begin
  result = api_instance.tags_list(x_account_token, opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Exception when calling TagsApi->tags_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_account_token** | **String**| Token identifying the end user. | 
 **created_after** | **DateTime**| If provided, will only return objects created after this datetime. | [optional] 
 **created_before** | **DateTime**| If provided, will only return objects created before this datetime. | [optional] 
 **cursor** | **String**| The pagination cursor value. | [optional] 
 **modified_after** | **DateTime**| If provided, will only return objects modified after this datetime. | [optional] 
 **modified_before** | **DateTime**| If provided, will only return objects modified before this datetime. | [optional] 
 **page_size** | **Integer**| Number of results to return per page. | [optional] 
 **remote_id** | **String**| The API provider&#39;s ID for the given object. | [optional] 

### Return type

[**PaginatedTagList**](PaginatedTagList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

