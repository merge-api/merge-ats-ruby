# MergeATSClient::ActivitiesApi

All URIs are relative to *https://api.merge.dev/api/ats/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activities_list**](ActivitiesApi.md#activities_list) | **GET** /activities | 
[**activities_retrieve**](ActivitiesApi.md#activities_retrieve) | **GET** /activities/{id} | 



## activities_list

> PaginatedActivityList activities_list(x_account_token, opts)



Returns a list of `Activity` objects.

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

api_instance = MergeATSClient::ActivitiesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  created_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | If provided, will only return objects created after this datetime.
  created_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | If provided, will only return objects created before this datetime.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  expand: 'user', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  modified_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | If provided, will only return objects modified after this datetime.
  modified_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | If provided, will only return objects modified before this datetime.
  page_size: 56, # Integer | Number of results to return per page.
  remote_id: 'remote_id_example', # String | The API provider's ID for the given object.
  user_id: 'user_id_example' # String | If provided, will only return activities done by this user.
}

begin
  result = api_instance.activities_list(x_account_token, opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Exception when calling ActivitiesApi->activities_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_account_token** | **String**| Token identifying the end user. | 
 **created_after** | **DateTime**| If provided, will only return objects created after this datetime. | [optional] 
 **created_before** | **DateTime**| If provided, will only return objects created before this datetime. | [optional] 
 **cursor** | **String**| The pagination cursor value. | [optional] 
 **expand** | **String**| Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] 
 **modified_after** | **DateTime**| If provided, will only return objects modified after this datetime. | [optional] 
 **modified_before** | **DateTime**| If provided, will only return objects modified before this datetime. | [optional] 
 **page_size** | **Integer**| Number of results to return per page. | [optional] 
 **remote_id** | **String**| The API provider&#39;s ID for the given object. | [optional] 
 **user_id** | [**String**](.md)| If provided, will only return activities done by this user. | [optional] 

### Return type

[**PaginatedActivityList**](PaginatedActivityList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## activities_retrieve

> Activity activities_retrieve(x_account_token, id, opts)



Returns an `Activity` object with the given `id`.

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

api_instance = MergeATSClient::ActivitiesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = 'id_example' # String | 
opts = {
  expand: 'user' # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
}

begin
  result = api_instance.activities_retrieve(x_account_token, id, opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Exception when calling ActivitiesApi->activities_retrieve: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_account_token** | **String**| Token identifying the end user. | 
 **id** | [**String**](.md)|  | 
 **expand** | **String**| Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] 

### Return type

[**Activity**](Activity.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

