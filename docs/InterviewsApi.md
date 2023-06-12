# MergeATSClient::InterviewsApi

All URIs are relative to *https://api.merge.dev/api/ats/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**interviews_create**](InterviewsApi.md#interviews_create) | **POST** /interviews |  |
| [**interviews_list**](InterviewsApi.md#interviews_list) | **GET** /interviews |  |
| [**interviews_meta_post_retrieve**](InterviewsApi.md#interviews_meta_post_retrieve) | **GET** /interviews/meta/post |  |
| [**interviews_retrieve**](InterviewsApi.md#interviews_retrieve) | **GET** /interviews/{id} |  |


## interviews_create

> <ScheduledInterviewResponse> interviews_create(x_account_token, scheduled_interview_endpoint_request, opts)



Creates a `ScheduledInterview` object with the given values.

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

api_instance = MergeATSClient::InterviewsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
scheduled_interview_endpoint_request = MergeATSClient::ScheduledInterviewEndpointRequest.new({model: MergeATSClient::ScheduledInterviewRequest.new, remote_user_id: 'remote_user_id_example'}) # ScheduledInterviewEndpointRequest | 
opts = {
  is_debug_mode: true, # Boolean | Whether to include debug fields (such as log file links) in the response.
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  
  result = api_instance.interviews_create(x_account_token, scheduled_interview_endpoint_request, opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Error when calling InterviewsApi->interviews_create: #{e}"
end
```

#### Using the interviews_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ScheduledInterviewResponse>, Integer, Hash)> interviews_create_with_http_info(x_account_token, scheduled_interview_endpoint_request, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.interviews_create_with_http_info(x_account_token, scheduled_interview_endpoint_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ScheduledInterviewResponse>
rescue MergeATSClient::ApiError => e
  puts "Error when calling InterviewsApi->interviews_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **scheduled_interview_endpoint_request** | [**ScheduledInterviewEndpointRequest**](ScheduledInterviewEndpointRequest.md) |  |  |
| **is_debug_mode** | **Boolean** | Whether to include debug fields (such as log file links) in the response. | [optional] |
| **run_async** | **Boolean** | Whether or not third-party updates should be run asynchronously. | [optional] |

### Return type

[**ScheduledInterviewResponse**](ScheduledInterviewResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## interviews_list

> <PaginatedScheduledInterviewList> interviews_list(x_account_token, opts)



Returns a list of `ScheduledInterview` objects.

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

api_instance = MergeATSClient::InterviewsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  application_id: 'application_id_example', # String | If provided, will only return interviews for this application.
  created_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created after this datetime.
  created_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created before this datetime.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  expand: 'application', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_deleted_data: true, # Boolean | Whether to include data that was marked as deleted by third party webhooks.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  job_interview_stage_id: 'job_interview_stage_id_example', # String | If provided, will only return interviews at this stage.
  modified_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, only objects synced by Merge after this date time will be returned.
  modified_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, only objects synced by Merge before this date time will be returned.
  organizer_id: 'organizer_id_example', # String | If provided, will only return interviews organized by this user.
  page_size: 56, # Integer | Number of results to return per page.
  remote_fields: 'status', # String | Deprecated. Use show_enum_origins.
  remote_id: 'remote_id_example', # String | The API provider's ID for the given object.
  show_enum_origins: 'status' # String | Which fields should be returned in non-normalized form.
}

begin
  
  result = api_instance.interviews_list(x_account_token, opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Error when calling InterviewsApi->interviews_list: #{e}"
end
```

#### Using the interviews_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedScheduledInterviewList>, Integer, Hash)> interviews_list_with_http_info(x_account_token, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.interviews_list_with_http_info(x_account_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedScheduledInterviewList>
rescue MergeATSClient::ApiError => e
  puts "Error when calling InterviewsApi->interviews_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **application_id** | **String** | If provided, will only return interviews for this application. | [optional] |
| **created_after** | **Time** | If provided, will only return objects created after this datetime. | [optional] |
| **created_before** | **Time** | If provided, will only return objects created before this datetime. | [optional] |
| **cursor** | **String** | The pagination cursor value. | [optional] |
| **expand** | **String** | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] |
| **include_deleted_data** | **Boolean** | Whether to include data that was marked as deleted by third party webhooks. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **job_interview_stage_id** | **String** | If provided, will only return interviews at this stage. | [optional] |
| **modified_after** | **Time** | If provided, only objects synced by Merge after this date time will be returned. | [optional] |
| **modified_before** | **Time** | If provided, only objects synced by Merge before this date time will be returned. | [optional] |
| **organizer_id** | **String** | If provided, will only return interviews organized by this user. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |
| **remote_fields** | **String** | Deprecated. Use show_enum_origins. | [optional] |
| **remote_id** | **String** | The API provider&#39;s ID for the given object. | [optional] |
| **show_enum_origins** | **String** | Which fields should be returned in non-normalized form. | [optional] |

### Return type

[**PaginatedScheduledInterviewList**](PaginatedScheduledInterviewList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## interviews_meta_post_retrieve

> <MetaResponse> interviews_meta_post_retrieve(x_account_token)



Returns metadata for `ScheduledInterview` POSTs.

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

api_instance = MergeATSClient::InterviewsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.

begin
  
  result = api_instance.interviews_meta_post_retrieve(x_account_token)
  p result
rescue MergeATSClient::ApiError => e
  puts "Error when calling InterviewsApi->interviews_meta_post_retrieve: #{e}"
end
```

#### Using the interviews_meta_post_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetaResponse>, Integer, Hash)> interviews_meta_post_retrieve_with_http_info(x_account_token)

```ruby
begin
  
  data, status_code, headers = api_instance.interviews_meta_post_retrieve_with_http_info(x_account_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetaResponse>
rescue MergeATSClient::ApiError => e
  puts "Error when calling InterviewsApi->interviews_meta_post_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |

### Return type

[**MetaResponse**](MetaResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## interviews_retrieve

> <ScheduledInterview> interviews_retrieve(x_account_token, id, opts)



Returns a `ScheduledInterview` object with the given `id`.

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

api_instance = MergeATSClient::InterviewsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 
opts = {
  expand: 'application', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  remote_fields: 'status', # String | Deprecated. Use show_enum_origins.
  show_enum_origins: 'status' # String | Which fields should be returned in non-normalized form.
}

begin
  
  result = api_instance.interviews_retrieve(x_account_token, id, opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Error when calling InterviewsApi->interviews_retrieve: #{e}"
end
```

#### Using the interviews_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ScheduledInterview>, Integer, Hash)> interviews_retrieve_with_http_info(x_account_token, id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.interviews_retrieve_with_http_info(x_account_token, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ScheduledInterview>
rescue MergeATSClient::ApiError => e
  puts "Error when calling InterviewsApi->interviews_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **id** | [**String**](.md) |  |  |
| **expand** | **String** | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **remote_fields** | **String** | Deprecated. Use show_enum_origins. | [optional] |
| **show_enum_origins** | **String** | Which fields should be returned in non-normalized form. | [optional] |

### Return type

[**ScheduledInterview**](ScheduledInterview.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

