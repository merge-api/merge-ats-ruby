# MergeATSClient::JobInterviewStagesApi

All URIs are relative to *https://app.merge.dev/api/ats/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**job_interview_stages_create**](JobInterviewStagesApi.md#job_interview_stages_create) | **POST** /job-interview-stages | 
[**job_interview_stages_destroy**](JobInterviewStagesApi.md#job_interview_stages_destroy) | **DELETE** /job-interview-stages/{id} | 
[**job_interview_stages_list**](JobInterviewStagesApi.md#job_interview_stages_list) | **GET** /job-interview-stages | 
[**job_interview_stages_partial_update**](JobInterviewStagesApi.md#job_interview_stages_partial_update) | **PATCH** /job-interview-stages/{id} | 
[**job_interview_stages_retrieve**](JobInterviewStagesApi.md#job_interview_stages_retrieve) | **GET** /job-interview-stages/{id} | 



## job_interview_stages_create

> JobInterviewStage job_interview_stages_create(opts)



Creates a `JobInterviewStage` object with the given values.

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

api_instance = MergeATSClient::JobInterviewStagesApi.new
opts = {
  x_account_token: 'x_account_token_example', # String | Token identifying the end user.
  run_async: true, # Boolean | Whether or not third-party updates should be run asynchronously.
  job_interview_stage: MergeATSClient::JobInterviewStage.new # JobInterviewStage | 
}

begin
  result = api_instance.job_interview_stages_create(opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Exception when calling JobInterviewStagesApi->job_interview_stages_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_account_token** | **String**| Token identifying the end user. | [optional] 
 **run_async** | **Boolean**| Whether or not third-party updates should be run asynchronously. | [optional] 
 **job_interview_stage** | [**JobInterviewStage**](JobInterviewStage.md)|  | [optional] 

### Return type

[**JobInterviewStage**](JobInterviewStage.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## job_interview_stages_destroy

> JobInterviewStage job_interview_stages_destroy(id, opts)



Deletes a `JobInterviewStage` object with the given `id`.

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

api_instance = MergeATSClient::JobInterviewStagesApi.new
id = 'id_example' # String | 
opts = {
  x_account_token: 'x_account_token_example', # String | Token identifying the end user.
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  result = api_instance.job_interview_stages_destroy(id, opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Exception when calling JobInterviewStagesApi->job_interview_stages_destroy: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **x_account_token** | **String**| Token identifying the end user. | [optional] 
 **run_async** | **Boolean**| Whether or not third-party updates should be run asynchronously. | [optional] 

### Return type

[**JobInterviewStage**](JobInterviewStage.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## job_interview_stages_list

> PaginatedJobInterviewStageList job_interview_stages_list(opts)



Returns a list of `JobInterviewStage` objects.

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

api_instance = MergeATSClient::JobInterviewStagesApi.new
opts = {
  x_account_token: 'x_account_token_example', # String | Token identifying the end user.
  created_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | If provided, will only return objects created after this datetime.
  created_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | If provided, will only return objects created before this datetime.
  cursor: 56, # Integer | The pagination cursor value.
  expand: 'expand_example', # String | Which relations should be returned in expanded form.
  job_id: 'job_id_example', # String | If provided, will only return interview stages for this job.
  modified_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | If provided, will only return objects modified after this datetime.
  modified_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | If provided, will only return objects modified before this datetime.
  page_size: 56, # Integer | Number of results to return per page.
  remote_id: 'remote_id_example' # String | The API provider's ID for the given object.
}

begin
  result = api_instance.job_interview_stages_list(opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Exception when calling JobInterviewStagesApi->job_interview_stages_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_account_token** | **String**| Token identifying the end user. | [optional] 
 **created_after** | **DateTime**| If provided, will only return objects created after this datetime. | [optional] 
 **created_before** | **DateTime**| If provided, will only return objects created before this datetime. | [optional] 
 **cursor** | **Integer**| The pagination cursor value. | [optional] 
 **expand** | **String**| Which relations should be returned in expanded form. | [optional] 
 **job_id** | [**String**](.md)| If provided, will only return interview stages for this job. | [optional] 
 **modified_after** | **DateTime**| If provided, will only return objects modified after this datetime. | [optional] 
 **modified_before** | **DateTime**| If provided, will only return objects modified before this datetime. | [optional] 
 **page_size** | **Integer**| Number of results to return per page. | [optional] 
 **remote_id** | **String**| The API provider&#39;s ID for the given object. | [optional] 

### Return type

[**PaginatedJobInterviewStageList**](PaginatedJobInterviewStageList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## job_interview_stages_partial_update

> JobInterviewStage job_interview_stages_partial_update(id, opts)



Updates a `JobInterviewStage` object with the given `id`.

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

api_instance = MergeATSClient::JobInterviewStagesApi.new
id = 'id_example' # String | 
opts = {
  x_account_token: 'x_account_token_example', # String | Token identifying the end user.
  run_async: true, # Boolean | Whether or not third-party updates should be run asynchronously.
  patched_job_interview_stage: MergeATSClient::PatchedJobInterviewStage.new # PatchedJobInterviewStage | 
}

begin
  result = api_instance.job_interview_stages_partial_update(id, opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Exception when calling JobInterviewStagesApi->job_interview_stages_partial_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **x_account_token** | **String**| Token identifying the end user. | [optional] 
 **run_async** | **Boolean**| Whether or not third-party updates should be run asynchronously. | [optional] 
 **patched_job_interview_stage** | [**PatchedJobInterviewStage**](PatchedJobInterviewStage.md)|  | [optional] 

### Return type

[**JobInterviewStage**](JobInterviewStage.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## job_interview_stages_retrieve

> JobInterviewStage job_interview_stages_retrieve(id, opts)



Returns a `JobInterviewStage` object with the given `id`.

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

api_instance = MergeATSClient::JobInterviewStagesApi.new
id = 'id_example' # String | 
opts = {
  x_account_token: 'x_account_token_example', # String | Token identifying the end user.
  expand: 'expand_example' # String | Which relations should be returned in expanded form.
}

begin
  result = api_instance.job_interview_stages_retrieve(id, opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Exception when calling JobInterviewStagesApi->job_interview_stages_retrieve: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **x_account_token** | **String**| Token identifying the end user. | [optional] 
 **expand** | **String**| Which relations should be returned in expanded form. | [optional] 

### Return type

[**JobInterviewStage**](JobInterviewStage.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

