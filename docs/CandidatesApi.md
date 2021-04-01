# MergeATSClient::CandidatesApi

All URIs are relative to *https://api.merge.dev/api/ats/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**candidates_create**](CandidatesApi.md#candidates_create) | **POST** /candidates |  |
| [**candidates_list**](CandidatesApi.md#candidates_list) | **GET** /candidates |  |
| [**candidates_retrieve**](CandidatesApi.md#candidates_retrieve) | **GET** /candidates/{id} |  |


## candidates_create

> <Candidate> candidates_create(x_account_token, remote_user_id, opts)



Creates a `Candidate` object with the given values.

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

api_instance = MergeATSClient::CandidatesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
remote_user_id = 'remote_user_id_example' # String | The ID of the RemoteUser deleting the resource. This can be found in the ID field (not remote_id) in the RemoteUser table.
opts = {
  run_async: true, # Boolean | Whether or not third-party updates should be run asynchronously.
  candidate_request: MergeATSClient::CandidateRequest.new # CandidateRequest | 
}

begin
  
  result = api_instance.candidates_create(x_account_token, remote_user_id, opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Error when calling CandidatesApi->candidates_create: #{e}"
end
```

#### Using the candidates_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Candidate>, Integer, Hash)> candidates_create_with_http_info(x_account_token, remote_user_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.candidates_create_with_http_info(x_account_token, remote_user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Candidate>
rescue MergeATSClient::ApiError => e
  puts "Error when calling CandidatesApi->candidates_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **remote_user_id** | **String** | The ID of the RemoteUser deleting the resource. This can be found in the ID field (not remote_id) in the RemoteUser table. |  |
| **run_async** | **Boolean** | Whether or not third-party updates should be run asynchronously. | [optional] |
| **candidate_request** | [**CandidateRequest**](CandidateRequest.md) |  | [optional] |

### Return type

[**Candidate**](Candidate.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## candidates_list

> <PaginatedCandidateList> candidates_list(x_account_token, opts)



Returns a list of `Candidate` objects.

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

api_instance = MergeATSClient::CandidatesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  created_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created after this datetime.
  created_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created before this datetime.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  expand: 'applications', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  modified_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified after this datetime.
  modified_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified before this datetime.
  page_size: 56, # Integer | Number of results to return per page.
  remote_id: 'remote_id_example' # String | The API provider's ID for the given object.
}

begin
  
  result = api_instance.candidates_list(x_account_token, opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Error when calling CandidatesApi->candidates_list: #{e}"
end
```

#### Using the candidates_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedCandidateList>, Integer, Hash)> candidates_list_with_http_info(x_account_token, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.candidates_list_with_http_info(x_account_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedCandidateList>
rescue MergeATSClient::ApiError => e
  puts "Error when calling CandidatesApi->candidates_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **created_after** | **Time** | If provided, will only return objects created after this datetime. | [optional] |
| **created_before** | **Time** | If provided, will only return objects created before this datetime. | [optional] |
| **cursor** | **String** | The pagination cursor value. | [optional] |
| **expand** | **String** | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **modified_after** | **Time** | If provided, will only return objects modified after this datetime. | [optional] |
| **modified_before** | **Time** | If provided, will only return objects modified before this datetime. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |
| **remote_id** | **String** | The API provider&#39;s ID for the given object. | [optional] |

### Return type

[**PaginatedCandidateList**](PaginatedCandidateList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## candidates_retrieve

> <Candidate> candidates_retrieve(x_account_token, id, opts)



Returns a `Candidate` object with the given `id`.

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

api_instance = MergeATSClient::CandidatesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 
opts = {
  expand: 'applications', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_remote_data: true # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
}

begin
  
  result = api_instance.candidates_retrieve(x_account_token, id, opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Error when calling CandidatesApi->candidates_retrieve: #{e}"
end
```

#### Using the candidates_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Candidate>, Integer, Hash)> candidates_retrieve_with_http_info(x_account_token, id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.candidates_retrieve_with_http_info(x_account_token, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Candidate>
rescue MergeATSClient::ApiError => e
  puts "Error when calling CandidatesApi->candidates_retrieve_with_http_info: #{e}"
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

[**Candidate**](Candidate.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

