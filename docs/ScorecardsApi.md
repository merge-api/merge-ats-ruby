# MergeATSClient::ScorecardsApi

All URIs are relative to *https://api.merge.dev/api/ats/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**scorecards_list**](ScorecardsApi.md#scorecards_list) | **GET** /scorecards |  |
| [**scorecards_retrieve**](ScorecardsApi.md#scorecards_retrieve) | **GET** /scorecards/{id} |  |


## scorecards_list

> <PaginatedScorecardList> scorecards_list(x_account_token, opts)



Returns a list of `Scorecard` objects.

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

api_instance = MergeATSClient::ScorecardsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  application_id: 'application_id_example', # String | If provided, will only return scorecards for this application.
  created_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created after this datetime.
  created_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created before this datetime.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  expand: 'application', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_deleted_data: true, # Boolean | Whether to include data that was marked as deleted by third party webhooks.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  interview_id: 'interview_id_example', # String | If provided, will only return scorecards for this interview.
  interviewer_id: 'interviewer_id_example', # String | If provided, will only return scorecards for this interviewer.
  modified_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, only objects synced by Merge after this date time will be returned.
  modified_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, only objects synced by Merge before this date time will be returned.
  page_size: 56, # Integer | Number of results to return per page.
  remote_fields: 'overall_recommendation', # String | Deprecated. Use show_enum_origins.
  remote_id: 'remote_id_example', # String | The API provider's ID for the given object.
  show_enum_origins: 'overall_recommendation' # String | Which fields should be returned in non-normalized form.
}

begin
  
  result = api_instance.scorecards_list(x_account_token, opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Error when calling ScorecardsApi->scorecards_list: #{e}"
end
```

#### Using the scorecards_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedScorecardList>, Integer, Hash)> scorecards_list_with_http_info(x_account_token, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.scorecards_list_with_http_info(x_account_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedScorecardList>
rescue MergeATSClient::ApiError => e
  puts "Error when calling ScorecardsApi->scorecards_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **application_id** | **String** | If provided, will only return scorecards for this application. | [optional] |
| **created_after** | **Time** | If provided, will only return objects created after this datetime. | [optional] |
| **created_before** | **Time** | If provided, will only return objects created before this datetime. | [optional] |
| **cursor** | **String** | The pagination cursor value. | [optional] |
| **expand** | **String** | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] |
| **include_deleted_data** | **Boolean** | Whether to include data that was marked as deleted by third party webhooks. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **interview_id** | **String** | If provided, will only return scorecards for this interview. | [optional] |
| **interviewer_id** | **String** | If provided, will only return scorecards for this interviewer. | [optional] |
| **modified_after** | **Time** | If provided, only objects synced by Merge after this date time will be returned. | [optional] |
| **modified_before** | **Time** | If provided, only objects synced by Merge before this date time will be returned. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |
| **remote_fields** | **String** | Deprecated. Use show_enum_origins. | [optional] |
| **remote_id** | **String** | The API provider&#39;s ID for the given object. | [optional] |
| **show_enum_origins** | **String** | Which fields should be returned in non-normalized form. | [optional] |

### Return type

[**PaginatedScorecardList**](PaginatedScorecardList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## scorecards_retrieve

> <Scorecard> scorecards_retrieve(x_account_token, id, opts)



Returns a `Scorecard` object with the given `id`.

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

api_instance = MergeATSClient::ScorecardsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 
opts = {
  expand: 'application', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  remote_fields: 'overall_recommendation', # String | Deprecated. Use show_enum_origins.
  show_enum_origins: 'overall_recommendation' # String | Which fields should be returned in non-normalized form.
}

begin
  
  result = api_instance.scorecards_retrieve(x_account_token, id, opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Error when calling ScorecardsApi->scorecards_retrieve: #{e}"
end
```

#### Using the scorecards_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Scorecard>, Integer, Hash)> scorecards_retrieve_with_http_info(x_account_token, id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.scorecards_retrieve_with_http_info(x_account_token, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Scorecard>
rescue MergeATSClient::ApiError => e
  puts "Error when calling ScorecardsApi->scorecards_retrieve_with_http_info: #{e}"
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

[**Scorecard**](Scorecard.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

