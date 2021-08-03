# MergeATSClient::IssuesApi

All URIs are relative to *https://api.merge.dev/api/ats/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**issues_list**](IssuesApi.md#issues_list) | **GET** /issues |  |
| [**issues_retrieve**](IssuesApi.md#issues_retrieve) | **GET** /issues/{id} |  |


## issues_list

> <PaginatedIssueList> issues_list(opts)



Gets issues.

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

api_instance = MergeATSClient::IssuesApi.new
opts = {
  account_token: 'account_token_example', # String | account_token
  cursor: 56, # Integer | The pagination cursor value.
  end_date: 'end_date_example', # String | If included, will only include issues whose most recent action occurred before this time
  end_user_organization_name: 'end_user_organization_name_example', # String | end_user_organization_name
  include_muted: 'include_muted_example', # String | If True, will include muted issues
  integration_name: 'integration_name_example', # String | integration_name
  page_size: 56, # Integer | Number of results to return per page.
  start_date: 'start_date_example', # String | If included, will only include issues whose most recent action occurred after this time
  status: 'ONGOING' # String | status
}

begin
  
  result = api_instance.issues_list(opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Error when calling IssuesApi->issues_list: #{e}"
end
```

#### Using the issues_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedIssueList>, Integer, Hash)> issues_list_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.issues_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedIssueList>
rescue MergeATSClient::ApiError => e
  puts "Error when calling IssuesApi->issues_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_token** | **String** | account_token | [optional] |
| **cursor** | **Integer** | The pagination cursor value. | [optional] |
| **end_date** | **String** | If included, will only include issues whose most recent action occurred before this time | [optional] |
| **end_user_organization_name** | **String** | end_user_organization_name | [optional] |
| **include_muted** | **String** | If True, will include muted issues | [optional] |
| **integration_name** | **String** | integration_name | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |
| **start_date** | **String** | If included, will only include issues whose most recent action occurred after this time | [optional] |
| **status** | **String** | status | [optional] |

### Return type

[**PaginatedIssueList**](PaginatedIssueList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## issues_retrieve

> <Issue> issues_retrieve(id)



Get a specific issue.

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

api_instance = MergeATSClient::IssuesApi.new
id = TODO # String | 

begin
  
  result = api_instance.issues_retrieve(id)
  p result
rescue MergeATSClient::ApiError => e
  puts "Error when calling IssuesApi->issues_retrieve: #{e}"
end
```

#### Using the issues_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Issue>, Integer, Hash)> issues_retrieve_with_http_info(id)

```ruby
begin
  
  data, status_code, headers = api_instance.issues_retrieve_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Issue>
rescue MergeATSClient::ApiError => e
  puts "Error when calling IssuesApi->issues_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**String**](.md) |  |  |

### Return type

[**Issue**](Issue.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

