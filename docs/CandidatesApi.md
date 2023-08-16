# MergeATSClient::CandidatesApi

All URIs are relative to *https://api.merge.dev/api/ats/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**candidates_create**](CandidatesApi.md#candidates_create) | **POST** /candidates |  |
| [**candidates_ignore_create**](CandidatesApi.md#candidates_ignore_create) | **POST** /candidates/ignore/{model_id} |  |
| [**candidates_list**](CandidatesApi.md#candidates_list) | **GET** /candidates |  |
| [**candidates_meta_patch_retrieve**](CandidatesApi.md#candidates_meta_patch_retrieve) | **GET** /candidates/meta/patch/{id} |  |
| [**candidates_meta_post_retrieve**](CandidatesApi.md#candidates_meta_post_retrieve) | **GET** /candidates/meta/post |  |
| [**candidates_partial_update**](CandidatesApi.md#candidates_partial_update) | **PATCH** /candidates/{id} |  |
| [**candidates_retrieve**](CandidatesApi.md#candidates_retrieve) | **GET** /candidates/{id} |  |


## candidates_create

> <CandidateResponse> candidates_create(x_account_token, candidate_endpoint_request, opts)



Creates a `Candidate` object with the given values.

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

api_instance = MergeATSClient::CandidatesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
candidate_endpoint_request = MergeATSClient::CandidateEndpointRequest.new({model: MergeATSClient::CandidateRequest.new, remote_user_id: 'remote_user_id_example'}) # CandidateEndpointRequest | 
opts = {
  is_debug_mode: true, # Boolean | Whether to include debug fields (such as log file links) in the response.
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  
  result = api_instance.candidates_create(x_account_token, candidate_endpoint_request, opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Error when calling CandidatesApi->candidates_create: #{e}"
end
```

#### Using the candidates_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CandidateResponse>, Integer, Hash)> candidates_create_with_http_info(x_account_token, candidate_endpoint_request, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.candidates_create_with_http_info(x_account_token, candidate_endpoint_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CandidateResponse>
rescue MergeATSClient::ApiError => e
  puts "Error when calling CandidatesApi->candidates_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **candidate_endpoint_request** | [**CandidateEndpointRequest**](CandidateEndpointRequest.md) |  |  |
| **is_debug_mode** | **Boolean** | Whether to include debug fields (such as log file links) in the response. | [optional] |
| **run_async** | **Boolean** | Whether or not third-party updates should be run asynchronously. | [optional] |

### Return type

[**CandidateResponse**](CandidateResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## candidates_ignore_create

> candidates_ignore_create(x_account_token, model_id, ignore_common_model_request)



Ignores a specific row based on the `model_id` in the url. These records will have their properties set to null, and will not be updated in future syncs. The \"reason\" and \"message\" fields in the request body will be stored for audit purposes.

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

api_instance = MergeATSClient::CandidatesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
model_id = TODO # String | 
ignore_common_model_request = MergeATSClient::IgnoreCommonModelRequest.new({reason: MergeATSClient::ReasonEnum::GENERAL_CUSTOMER_REQUEST}) # IgnoreCommonModelRequest | 

begin
  
  api_instance.candidates_ignore_create(x_account_token, model_id, ignore_common_model_request)
rescue MergeATSClient::ApiError => e
  puts "Error when calling CandidatesApi->candidates_ignore_create: #{e}"
end
```

#### Using the candidates_ignore_create_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> candidates_ignore_create_with_http_info(x_account_token, model_id, ignore_common_model_request)

```ruby
begin
  
  data, status_code, headers = api_instance.candidates_ignore_create_with_http_info(x_account_token, model_id, ignore_common_model_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue MergeATSClient::ApiError => e
  puts "Error when calling CandidatesApi->candidates_ignore_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **model_id** | [**String**](.md) |  |  |
| **ignore_common_model_request** | [**IgnoreCommonModelRequest**](IgnoreCommonModelRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: Not defined


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
  config.api_key['tokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['tokenAuth'] = 'Bearer'
end

api_instance = MergeATSClient::CandidatesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  created_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created after this datetime.
  created_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created before this datetime.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  email_addresses: 'email_addresses_example', # String | If provided, will only return candidates with these email addresses; multiple addresses can be separated by commas.
  expand: 'applications', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  first_name: 'first_name_example', # String | If provided, will only return candidates with this first name.
  include_deleted_data: true, # Boolean | Whether to include data that was marked as deleted by third party webhooks.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  last_name: 'last_name_example', # String | If provided, will only return candidates with this last name.
  modified_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, only objects synced by Merge after this date time will be returned.
  modified_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, only objects synced by Merge before this date time will be returned.
  page_size: 56, # Integer | Number of results to return per page.
  remote_id: 'remote_id_example', # String | The API provider's ID for the given object.
  tags: 'tags_example' # String | If provided, will only return candidates with these tags; multiple tags can be separated by commas.
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
| **email_addresses** | **String** | If provided, will only return candidates with these email addresses; multiple addresses can be separated by commas. | [optional] |
| **expand** | **String** | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] |
| **first_name** | **String** | If provided, will only return candidates with this first name. | [optional] |
| **include_deleted_data** | **Boolean** | Whether to include data that was marked as deleted by third party webhooks. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **last_name** | **String** | If provided, will only return candidates with this last name. | [optional] |
| **modified_after** | **Time** | If provided, only objects synced by Merge after this date time will be returned. | [optional] |
| **modified_before** | **Time** | If provided, only objects synced by Merge before this date time will be returned. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |
| **remote_id** | **String** | The API provider&#39;s ID for the given object. | [optional] |
| **tags** | **String** | If provided, will only return candidates with these tags; multiple tags can be separated by commas. | [optional] |

### Return type

[**PaginatedCandidateList**](PaginatedCandidateList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## candidates_meta_patch_retrieve

> <MetaResponse> candidates_meta_patch_retrieve(x_account_token, id)



Returns metadata for `Candidate` PATCHs.

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

api_instance = MergeATSClient::CandidatesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 

begin
  
  result = api_instance.candidates_meta_patch_retrieve(x_account_token, id)
  p result
rescue MergeATSClient::ApiError => e
  puts "Error when calling CandidatesApi->candidates_meta_patch_retrieve: #{e}"
end
```

#### Using the candidates_meta_patch_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetaResponse>, Integer, Hash)> candidates_meta_patch_retrieve_with_http_info(x_account_token, id)

```ruby
begin
  
  data, status_code, headers = api_instance.candidates_meta_patch_retrieve_with_http_info(x_account_token, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetaResponse>
rescue MergeATSClient::ApiError => e
  puts "Error when calling CandidatesApi->candidates_meta_patch_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **id** | [**String**](.md) |  |  |

### Return type

[**MetaResponse**](MetaResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## candidates_meta_post_retrieve

> <MetaResponse> candidates_meta_post_retrieve(x_account_token)



Returns metadata for `Candidate` POSTs.

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

api_instance = MergeATSClient::CandidatesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.

begin
  
  result = api_instance.candidates_meta_post_retrieve(x_account_token)
  p result
rescue MergeATSClient::ApiError => e
  puts "Error when calling CandidatesApi->candidates_meta_post_retrieve: #{e}"
end
```

#### Using the candidates_meta_post_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetaResponse>, Integer, Hash)> candidates_meta_post_retrieve_with_http_info(x_account_token)

```ruby
begin
  
  data, status_code, headers = api_instance.candidates_meta_post_retrieve_with_http_info(x_account_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetaResponse>
rescue MergeATSClient::ApiError => e
  puts "Error when calling CandidatesApi->candidates_meta_post_retrieve_with_http_info: #{e}"
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


## candidates_partial_update

> <CandidateResponse> candidates_partial_update(x_account_token, id, patched_candidate_endpoint_request, opts)



Updates a `Candidate` object with the given `id`.

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

api_instance = MergeATSClient::CandidatesApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 
patched_candidate_endpoint_request = MergeATSClient::PatchedCandidateEndpointRequest.new({model: MergeATSClient::PatchedCandidateRequest.new, remote_user_id: 'remote_user_id_example'}) # PatchedCandidateEndpointRequest | 
opts = {
  is_debug_mode: true, # Boolean | Whether to include debug fields (such as log file links) in the response.
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  
  result = api_instance.candidates_partial_update(x_account_token, id, patched_candidate_endpoint_request, opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Error when calling CandidatesApi->candidates_partial_update: #{e}"
end
```

#### Using the candidates_partial_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CandidateResponse>, Integer, Hash)> candidates_partial_update_with_http_info(x_account_token, id, patched_candidate_endpoint_request, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.candidates_partial_update_with_http_info(x_account_token, id, patched_candidate_endpoint_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CandidateResponse>
rescue MergeATSClient::ApiError => e
  puts "Error when calling CandidatesApi->candidates_partial_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **id** | [**String**](.md) |  |  |
| **patched_candidate_endpoint_request** | [**PatchedCandidateEndpointRequest**](PatchedCandidateEndpointRequest.md) |  |  |
| **is_debug_mode** | **Boolean** | Whether to include debug fields (such as log file links) in the response. | [optional] |
| **run_async** | **Boolean** | Whether or not third-party updates should be run asynchronously. | [optional] |

### Return type

[**CandidateResponse**](CandidateResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
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
  config.api_key['tokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['tokenAuth'] = 'Bearer'
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

