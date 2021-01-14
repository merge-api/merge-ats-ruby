# MergeATSClient::TasksApi

All URIs are relative to *https://app.merge.dev/api/ats/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tasks_list**](TasksApi.md#tasks_list) | **GET** /tasks | 
[**tasks_retrieve**](TasksApi.md#tasks_retrieve) | **GET** /tasks/{common_model_id} | 



## tasks_list

> PaginatedAsyncTaskExecutionList tasks_list(opts)



Returns all `AsyncTaskExecution` objects for the requester's organization.

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

api_instance = MergeATSClient::TasksApi.new
opts = {
  x_account_token: 'x_account_token_example', # String | Token identifying the end user.
  cursor: 56, # Integer | The pagination cursor value.
  page_size: 56 # Integer | Number of results to return per page.
}

begin
  result = api_instance.tasks_list(opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Exception when calling TasksApi->tasks_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_account_token** | **String**| Token identifying the end user. | [optional] 
 **cursor** | **Integer**| The pagination cursor value. | [optional] 
 **page_size** | **Integer**| Number of results to return per page. | [optional] 

### Return type

[**PaginatedAsyncTaskExecutionList**](PaginatedAsyncTaskExecutionList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## tasks_retrieve

> AsyncTaskExecution tasks_retrieve(common_model_id, opts)



Returns an `AsyncTaskExecution` object with the given `id`.

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

api_instance = MergeATSClient::TasksApi.new
common_model_id = 'common_model_id_example' # String | 
opts = {
  x_account_token: 'x_account_token_example' # String | Token identifying the end user.
}

begin
  result = api_instance.tasks_retrieve(common_model_id, opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Exception when calling TasksApi->tasks_retrieve: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **common_model_id** | [**String**](.md)|  | 
 **x_account_token** | **String**| Token identifying the end user. | [optional] 

### Return type

[**AsyncTaskExecution**](AsyncTaskExecution.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

