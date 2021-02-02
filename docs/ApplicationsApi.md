# MergeATSClient::ApplicationsApi

All URIs are relative to *https://api.merge.dev/api/ats/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**applications_list**](ApplicationsApi.md#applications_list) | **GET** /applications |  |
| [**applications_retrieve**](ApplicationsApi.md#applications_retrieve) | **GET** /applications/{id} |  |


## applications_list

> <PaginatedApplicationList> applications_list(x_account_token, opts)



Returns a list of `Application` objects.

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

api_instance = MergeATSClient::ApplicationsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  candidate_id: 'candidate_id_example', # String | If provided, will only return applications for this candidate.
  created_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created after this datetime.
  created_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created before this datetime.
  credited_to_id: 'credited_to_id_example', # String | If provided, will only return applications credited to this user.
  current_stage_id: 'current_stage_id_example', # String | If provided, will only return applications at this interview stage.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  expand: 'candidate', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  job_id: 'job_id_example', # String | If provided, will only return applications for this job.
  modified_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified after this datetime.
  modified_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified before this datetime.
  page_size: 56, # Integer | Number of results to return per page.
  reject_reason_id: 'reject_reason_id_example', # String | If provided, will only return applications with this reject reason.
  remote_id: 'remote_id_example' # String | The API provider's ID for the given object.
}

begin
  
  result = api_instance.applications_list(x_account_token, opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Error when calling ApplicationsApi->applications_list: #{e}"
end
```

#### Using the applications_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedApplicationList>, Integer, Hash)> applications_list_with_http_info(x_account_token, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.applications_list_with_http_info(x_account_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedApplicationList>
rescue MergeATSClient::ApiError => e
  puts "Error when calling ApplicationsApi->applications_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **candidate_id** | **String** | If provided, will only return applications for this candidate. | [optional] |
| **created_after** | **Time** | If provided, will only return objects created after this datetime. | [optional] |
| **created_before** | **Time** | If provided, will only return objects created before this datetime. | [optional] |
| **credited_to_id** | **String** | If provided, will only return applications credited to this user. | [optional] |
| **current_stage_id** | **String** | If provided, will only return applications at this interview stage. | [optional] |
| **cursor** | **String** | The pagination cursor value. | [optional] |
| **expand** | **String** | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] |
| **job_id** | **String** | If provided, will only return applications for this job. | [optional] |
| **modified_after** | **Time** | If provided, will only return objects modified after this datetime. | [optional] |
| **modified_before** | **Time** | If provided, will only return objects modified before this datetime. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |
| **reject_reason_id** | **String** | If provided, will only return applications with this reject reason. | [optional] |
| **remote_id** | **String** | The API provider&#39;s ID for the given object. | [optional] |

### Return type

[**PaginatedApplicationList**](PaginatedApplicationList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## applications_retrieve

> <Application> applications_retrieve(x_account_token, id, opts)



Returns an `Application` object with the given `id`.

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

api_instance = MergeATSClient::ApplicationsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 
opts = {
  expand: 'candidate' # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
}

begin
  
  result = api_instance.applications_retrieve(x_account_token, id, opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Error when calling ApplicationsApi->applications_retrieve: #{e}"
end
```

#### Using the applications_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Application>, Integer, Hash)> applications_retrieve_with_http_info(x_account_token, id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.applications_retrieve_with_http_info(x_account_token, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Application>
rescue MergeATSClient::ApiError => e
  puts "Error when calling ApplicationsApi->applications_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **id** | [**String**](.md) |  |  |
| **expand** | **String** | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] |

### Return type

[**Application**](Application.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

