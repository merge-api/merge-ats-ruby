# MergeATSClient::ScorecardsApi

All URIs are relative to *https://api.merge.dev/api/ats/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**scorecards_create**](ScorecardsApi.md#scorecards_create) | **POST** /scorecards |  |
| [**scorecards_list**](ScorecardsApi.md#scorecards_list) | **GET** /scorecards |  |
| [**scorecards_retrieve**](ScorecardsApi.md#scorecards_retrieve) | **GET** /scorecards/{id} |  |


## scorecards_create

> <Scorecard> scorecards_create(x_account_token, remote_user_id, opts)



Creates a `Scorecard` object with the given values.

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
remote_user_id = 'remote_user_id_example' # String | The ID of the RemoteUser deleting the resource. This can be found in the ID field (not remote_id) in the RemoteUser table.
opts = {
  run_async: true, # Boolean | Whether or not third-party updates should be run asynchronously.
  scorecard_request: MergeATSClient::ScorecardRequest.new # ScorecardRequest | 
}

begin
  
  result = api_instance.scorecards_create(x_account_token, remote_user_id, opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Error when calling ScorecardsApi->scorecards_create: #{e}"
end
```

#### Using the scorecards_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Scorecard>, Integer, Hash)> scorecards_create_with_http_info(x_account_token, remote_user_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.scorecards_create_with_http_info(x_account_token, remote_user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Scorecard>
rescue MergeATSClient::ApiError => e
  puts "Error when calling ScorecardsApi->scorecards_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **remote_user_id** | **String** | The ID of the RemoteUser deleting the resource. This can be found in the ID field (not remote_id) in the RemoteUser table. |  |
| **run_async** | **Boolean** | Whether or not third-party updates should be run asynchronously. | [optional] |
| **scorecard_request** | [**ScorecardRequest**](ScorecardRequest.md) |  | [optional] |

### Return type

[**Scorecard**](Scorecard.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


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
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = MergeATSClient::ScorecardsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  application_id: 'application_id_example', # String | If provided, will only return scorecards for this application.
  created_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created after this datetime.
  created_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created before this datetime.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  expand: 'application', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  interview_id: 'interview_id_example', # String | If provided, will only return scorecards for this interview.
  interviewer_id: 'interviewer_id_example', # String | If provided, will only return scorecards for this interviewer.
  modified_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified after this datetime.
  modified_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified before this datetime.
  page_size: 56, # Integer | Number of results to return per page.
  remote_id: 'remote_id_example' # String | The API provider's ID for the given object.
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
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **interview_id** | **String** | If provided, will only return scorecards for this interview. | [optional] |
| **interviewer_id** | **String** | If provided, will only return scorecards for this interviewer. | [optional] |
| **modified_after** | **Time** | If provided, will only return objects modified after this datetime. | [optional] |
| **modified_before** | **Time** | If provided, will only return objects modified before this datetime. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |
| **remote_id** | **String** | The API provider&#39;s ID for the given object. | [optional] |

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
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = MergeATSClient::ScorecardsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 
opts = {
  expand: 'application', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_remote_data: true # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
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

### Return type

[**Scorecard**](Scorecard.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

