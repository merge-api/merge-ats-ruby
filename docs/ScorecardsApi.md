# MergeATSClient::ScorecardsApi

All URIs are relative to *https://app.merge.dev/api/ats/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**scorecards_create**](ScorecardsApi.md#scorecards_create) | **POST** /scorecards | 
[**scorecards_destroy**](ScorecardsApi.md#scorecards_destroy) | **DELETE** /scorecards/{id} | 
[**scorecards_list**](ScorecardsApi.md#scorecards_list) | **GET** /scorecards | 
[**scorecards_partial_update**](ScorecardsApi.md#scorecards_partial_update) | **PATCH** /scorecards/{id} | 
[**scorecards_retrieve**](ScorecardsApi.md#scorecards_retrieve) | **GET** /scorecards/{id} | 



## scorecards_create

> Scorecard scorecards_create(opts)



Creates a `Scorecard` object with the given values.

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

api_instance = MergeATSClient::ScorecardsApi.new
opts = {
  x_account_token: 'x_account_token_example', # String | Token identifying the end user.
  run_async: true, # Boolean | Whether or not third-party updates should be run asynchronously.
  scorecard: MergeATSClient::Scorecard.new # Scorecard | 
}

begin
  result = api_instance.scorecards_create(opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Exception when calling ScorecardsApi->scorecards_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_account_token** | **String**| Token identifying the end user. | [optional] 
 **run_async** | **Boolean**| Whether or not third-party updates should be run asynchronously. | [optional] 
 **scorecard** | [**Scorecard**](Scorecard.md)|  | [optional] 

### Return type

[**Scorecard**](Scorecard.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## scorecards_destroy

> Scorecard scorecards_destroy(id, opts)



Deletes a `Scorecard` object with the given `id`.

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

api_instance = MergeATSClient::ScorecardsApi.new
id = 'id_example' # String | 
opts = {
  x_account_token: 'x_account_token_example', # String | Token identifying the end user.
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  result = api_instance.scorecards_destroy(id, opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Exception when calling ScorecardsApi->scorecards_destroy: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **x_account_token** | **String**| Token identifying the end user. | [optional] 
 **run_async** | **Boolean**| Whether or not third-party updates should be run asynchronously. | [optional] 

### Return type

[**Scorecard**](Scorecard.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## scorecards_list

> PaginatedScorecardList scorecards_list(opts)



Returns a list of `Scorecard` objects.

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

api_instance = MergeATSClient::ScorecardsApi.new
opts = {
  x_account_token: 'x_account_token_example', # String | Token identifying the end user.
  application_id: 'application_id_example', # String | If provided, will only return scorecards for this application.
  created_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | If provided, will only return objects created after this datetime.
  created_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | If provided, will only return objects created before this datetime.
  cursor: 56, # Integer | The pagination cursor value.
  expand: 'expand_example', # String | Which relations should be returned in expanded form.
  interview_id: 'interview_id_example', # String | If provided, will only return scorecards for this interview.
  interviewer_id: 'interviewer_id_example', # String | If provided, will only return scorecards for this interviewer.
  modified_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | If provided, will only return objects modified after this datetime.
  modified_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | If provided, will only return objects modified before this datetime.
  page_size: 56, # Integer | Number of results to return per page.
  remote_id: 'remote_id_example' # String | The API provider's ID for the given object.
}

begin
  result = api_instance.scorecards_list(opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Exception when calling ScorecardsApi->scorecards_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_account_token** | **String**| Token identifying the end user. | [optional] 
 **application_id** | [**String**](.md)| If provided, will only return scorecards for this application. | [optional] 
 **created_after** | **DateTime**| If provided, will only return objects created after this datetime. | [optional] 
 **created_before** | **DateTime**| If provided, will only return objects created before this datetime. | [optional] 
 **cursor** | **Integer**| The pagination cursor value. | [optional] 
 **expand** | **String**| Which relations should be returned in expanded form. | [optional] 
 **interview_id** | [**String**](.md)| If provided, will only return scorecards for this interview. | [optional] 
 **interviewer_id** | [**String**](.md)| If provided, will only return scorecards for this interviewer. | [optional] 
 **modified_after** | **DateTime**| If provided, will only return objects modified after this datetime. | [optional] 
 **modified_before** | **DateTime**| If provided, will only return objects modified before this datetime. | [optional] 
 **page_size** | **Integer**| Number of results to return per page. | [optional] 
 **remote_id** | **String**| The API provider&#39;s ID for the given object. | [optional] 

### Return type

[**PaginatedScorecardList**](PaginatedScorecardList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## scorecards_partial_update

> Scorecard scorecards_partial_update(id, opts)



Updates a `Scorecard` object with the given `id`.

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

api_instance = MergeATSClient::ScorecardsApi.new
id = 'id_example' # String | 
opts = {
  x_account_token: 'x_account_token_example', # String | Token identifying the end user.
  run_async: true, # Boolean | Whether or not third-party updates should be run asynchronously.
  patched_scorecard: MergeATSClient::PatchedScorecard.new # PatchedScorecard | 
}

begin
  result = api_instance.scorecards_partial_update(id, opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Exception when calling ScorecardsApi->scorecards_partial_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **x_account_token** | **String**| Token identifying the end user. | [optional] 
 **run_async** | **Boolean**| Whether or not third-party updates should be run asynchronously. | [optional] 
 **patched_scorecard** | [**PatchedScorecard**](PatchedScorecard.md)|  | [optional] 

### Return type

[**Scorecard**](Scorecard.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## scorecards_retrieve

> Scorecard scorecards_retrieve(id, opts)



Returns a `Scorecard` object with the given `id`.

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

api_instance = MergeATSClient::ScorecardsApi.new
id = 'id_example' # String | 
opts = {
  x_account_token: 'x_account_token_example', # String | Token identifying the end user.
  expand: 'expand_example' # String | Which relations should be returned in expanded form.
}

begin
  result = api_instance.scorecards_retrieve(id, opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Exception when calling ScorecardsApi->scorecards_retrieve: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **x_account_token** | **String**| Token identifying the end user. | [optional] 
 **expand** | **String**| Which relations should be returned in expanded form. | [optional] 

### Return type

[**Scorecard**](Scorecard.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

