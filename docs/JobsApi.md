# MergeATSClient::JobsApi

All URIs are relative to *https://api.merge.dev/api/ats/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**jobs_list**](JobsApi.md#jobs_list) | **GET** /jobs |  |
| [**jobs_retrieve**](JobsApi.md#jobs_retrieve) | **GET** /jobs/{id} |  |


## jobs_list

> <PaginatedJobList> jobs_list(x_account_token, opts)



Returns a list of `Job` objects.

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

api_instance = MergeATSClient::JobsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  code: 'code_example', # String | If provided, will only return jobs with this code.
  created_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created after this datetime.
  created_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created before this datetime.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  expand: 'departments', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_deleted_data: true, # Boolean | Whether to include data that was marked as deleted by third party webhooks.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  modified_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, only objects synced by Merge after this date time will be returned.
  modified_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, only objects synced by Merge before this date time will be returned.
  offices: 'offices_example', # String | If provided, will only return jobs for this office; multiple offices can be separated by commas.
  page_size: 56, # Integer | Number of results to return per page.
  remote_fields: 'status', # String | Deprecated. Use show_enum_origins.
  remote_id: 'remote_id_example', # String | The API provider's ID for the given object.
  show_enum_origins: 'status', # String | Which fields should be returned in non-normalized form.
  status: 'ARCHIVED' # String | If provided, will only return jobs with this status. Options: ('OPEN', 'CLOSED', 'DRAFT', 'ARCHIVED', 'PENDING')  * `OPEN` - OPEN * `CLOSED` - CLOSED * `DRAFT` - DRAFT * `ARCHIVED` - ARCHIVED * `PENDING` - PENDING
}

begin
  
  result = api_instance.jobs_list(x_account_token, opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Error when calling JobsApi->jobs_list: #{e}"
end
```

#### Using the jobs_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedJobList>, Integer, Hash)> jobs_list_with_http_info(x_account_token, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.jobs_list_with_http_info(x_account_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedJobList>
rescue MergeATSClient::ApiError => e
  puts "Error when calling JobsApi->jobs_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **code** | **String** | If provided, will only return jobs with this code. | [optional] |
| **created_after** | **Time** | If provided, will only return objects created after this datetime. | [optional] |
| **created_before** | **Time** | If provided, will only return objects created before this datetime. | [optional] |
| **cursor** | **String** | The pagination cursor value. | [optional] |
| **expand** | **String** | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] |
| **include_deleted_data** | **Boolean** | Whether to include data that was marked as deleted by third party webhooks. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **modified_after** | **Time** | If provided, only objects synced by Merge after this date time will be returned. | [optional] |
| **modified_before** | **Time** | If provided, only objects synced by Merge before this date time will be returned. | [optional] |
| **offices** | **String** | If provided, will only return jobs for this office; multiple offices can be separated by commas. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |
| **remote_fields** | **String** | Deprecated. Use show_enum_origins. | [optional] |
| **remote_id** | **String** | The API provider&#39;s ID for the given object. | [optional] |
| **show_enum_origins** | **String** | Which fields should be returned in non-normalized form. | [optional] |
| **status** | **String** | If provided, will only return jobs with this status. Options: (&#39;OPEN&#39;, &#39;CLOSED&#39;, &#39;DRAFT&#39;, &#39;ARCHIVED&#39;, &#39;PENDING&#39;)  * &#x60;OPEN&#x60; - OPEN * &#x60;CLOSED&#x60; - CLOSED * &#x60;DRAFT&#x60; - DRAFT * &#x60;ARCHIVED&#x60; - ARCHIVED * &#x60;PENDING&#x60; - PENDING | [optional] |

### Return type

[**PaginatedJobList**](PaginatedJobList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## jobs_retrieve

> <Job> jobs_retrieve(x_account_token, id, opts)



Returns a `Job` object with the given `id`.

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

api_instance = MergeATSClient::JobsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 
opts = {
  expand: 'departments', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  remote_fields: 'status', # String | Deprecated. Use show_enum_origins.
  show_enum_origins: 'status' # String | Which fields should be returned in non-normalized form.
}

begin
  
  result = api_instance.jobs_retrieve(x_account_token, id, opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Error when calling JobsApi->jobs_retrieve: #{e}"
end
```

#### Using the jobs_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Job>, Integer, Hash)> jobs_retrieve_with_http_info(x_account_token, id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.jobs_retrieve_with_http_info(x_account_token, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Job>
rescue MergeATSClient::ApiError => e
  puts "Error when calling JobsApi->jobs_retrieve_with_http_info: #{e}"
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

[**Job**](Job.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

