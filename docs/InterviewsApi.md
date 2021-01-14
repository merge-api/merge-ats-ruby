# MergeATSClient::InterviewsApi

All URIs are relative to *https://app.merge.dev/api/ats/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**interviews_create**](InterviewsApi.md#interviews_create) | **POST** /interviews | 
[**interviews_destroy**](InterviewsApi.md#interviews_destroy) | **DELETE** /interviews/{id} | 
[**interviews_list**](InterviewsApi.md#interviews_list) | **GET** /interviews | 
[**interviews_partial_update**](InterviewsApi.md#interviews_partial_update) | **PATCH** /interviews/{id} | 
[**interviews_retrieve**](InterviewsApi.md#interviews_retrieve) | **GET** /interviews/{id} | 



## interviews_create

> ScheduledInterview interviews_create(opts)



Creates a `ScheduledInterview` object with the given values.

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

api_instance = MergeATSClient::InterviewsApi.new
opts = {
  x_account_token: 'x_account_token_example', # String | Token identifying the end user.
  run_async: true, # Boolean | Whether or not third-party updates should be run asynchronously.
  scheduled_interview: MergeATSClient::ScheduledInterview.new # ScheduledInterview | 
}

begin
  result = api_instance.interviews_create(opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Exception when calling InterviewsApi->interviews_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_account_token** | **String**| Token identifying the end user. | [optional] 
 **run_async** | **Boolean**| Whether or not third-party updates should be run asynchronously. | [optional] 
 **scheduled_interview** | [**ScheduledInterview**](ScheduledInterview.md)|  | [optional] 

### Return type

[**ScheduledInterview**](ScheduledInterview.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## interviews_destroy

> ScheduledInterview interviews_destroy(id, opts)



Deletes a `ScheduledInterview` object with the given `id`.

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

api_instance = MergeATSClient::InterviewsApi.new
id = 'id_example' # String | 
opts = {
  x_account_token: 'x_account_token_example', # String | Token identifying the end user.
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  result = api_instance.interviews_destroy(id, opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Exception when calling InterviewsApi->interviews_destroy: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **x_account_token** | **String**| Token identifying the end user. | [optional] 
 **run_async** | **Boolean**| Whether or not third-party updates should be run asynchronously. | [optional] 

### Return type

[**ScheduledInterview**](ScheduledInterview.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## interviews_list

> PaginatedScheduledInterviewList interviews_list(opts)



Returns a list of `ScheduledInterview` objects.

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

api_instance = MergeATSClient::InterviewsApi.new
opts = {
  x_account_token: 'x_account_token_example', # String | Token identifying the end user.
  application_id: 'application_id_example', # String | If provided, will only return interviews for this application.
  created_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | If provided, will only return objects created after this datetime.
  created_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | If provided, will only return objects created before this datetime.
  cursor: 56, # Integer | The pagination cursor value.
  expand: 'expand_example', # String | Which relations should be returned in expanded form.
  modified_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | If provided, will only return objects modified after this datetime.
  modified_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | If provided, will only return objects modified before this datetime.
  organizer_id: 'organizer_id_example', # String | If provided, will only return interviews organized by this user.
  page_size: 56, # Integer | Number of results to return per page.
  remote_id: 'remote_id_example' # String | The API provider's ID for the given object.
}

begin
  result = api_instance.interviews_list(opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Exception when calling InterviewsApi->interviews_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_account_token** | **String**| Token identifying the end user. | [optional] 
 **application_id** | [**String**](.md)| If provided, will only return interviews for this application. | [optional] 
 **created_after** | **DateTime**| If provided, will only return objects created after this datetime. | [optional] 
 **created_before** | **DateTime**| If provided, will only return objects created before this datetime. | [optional] 
 **cursor** | **Integer**| The pagination cursor value. | [optional] 
 **expand** | **String**| Which relations should be returned in expanded form. | [optional] 
 **modified_after** | **DateTime**| If provided, will only return objects modified after this datetime. | [optional] 
 **modified_before** | **DateTime**| If provided, will only return objects modified before this datetime. | [optional] 
 **organizer_id** | [**String**](.md)| If provided, will only return interviews organized by this user. | [optional] 
 **page_size** | **Integer**| Number of results to return per page. | [optional] 
 **remote_id** | **String**| The API provider&#39;s ID for the given object. | [optional] 

### Return type

[**PaginatedScheduledInterviewList**](PaginatedScheduledInterviewList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## interviews_partial_update

> ScheduledInterview interviews_partial_update(id, opts)



Updates a `ScheduledInterview` object with the given `id`.

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

api_instance = MergeATSClient::InterviewsApi.new
id = 'id_example' # String | 
opts = {
  x_account_token: 'x_account_token_example', # String | Token identifying the end user.
  run_async: true, # Boolean | Whether or not third-party updates should be run asynchronously.
  patched_scheduled_interview: MergeATSClient::PatchedScheduledInterview.new # PatchedScheduledInterview | 
}

begin
  result = api_instance.interviews_partial_update(id, opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Exception when calling InterviewsApi->interviews_partial_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **x_account_token** | **String**| Token identifying the end user. | [optional] 
 **run_async** | **Boolean**| Whether or not third-party updates should be run asynchronously. | [optional] 
 **patched_scheduled_interview** | [**PatchedScheduledInterview**](PatchedScheduledInterview.md)|  | [optional] 

### Return type

[**ScheduledInterview**](ScheduledInterview.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## interviews_retrieve

> ScheduledInterview interviews_retrieve(id, opts)



Returns a `ScheduledInterview` object with the given `id`.

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

api_instance = MergeATSClient::InterviewsApi.new
id = 'id_example' # String | 
opts = {
  x_account_token: 'x_account_token_example', # String | Token identifying the end user.
  expand: 'expand_example' # String | Which relations should be returned in expanded form.
}

begin
  result = api_instance.interviews_retrieve(id, opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Exception when calling InterviewsApi->interviews_retrieve: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **x_account_token** | **String**| Token identifying the end user. | [optional] 
 **expand** | **String**| Which relations should be returned in expanded form. | [optional] 

### Return type

[**ScheduledInterview**](ScheduledInterview.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

