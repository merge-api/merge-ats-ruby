# MergeATSClient::OffersApi

All URIs are relative to *https://app.merge.dev/api/ats/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**offers_create**](OffersApi.md#offers_create) | **POST** /offers | 
[**offers_destroy**](OffersApi.md#offers_destroy) | **DELETE** /offers/{id} | 
[**offers_list**](OffersApi.md#offers_list) | **GET** /offers | 
[**offers_partial_update**](OffersApi.md#offers_partial_update) | **PATCH** /offers/{id} | 
[**offers_retrieve**](OffersApi.md#offers_retrieve) | **GET** /offers/{id} | 



## offers_create

> Offer offers_create(opts)



Creates an `Offer` object with the given values.

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

api_instance = MergeATSClient::OffersApi.new
opts = {
  x_account_token: 'x_account_token_example', # String | Token identifying the end user.
  run_async: true, # Boolean | Whether or not third-party updates should be run asynchronously.
  offer: MergeATSClient::Offer.new # Offer | 
}

begin
  result = api_instance.offers_create(opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Exception when calling OffersApi->offers_create: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_account_token** | **String**| Token identifying the end user. | [optional] 
 **run_async** | **Boolean**| Whether or not third-party updates should be run asynchronously. | [optional] 
 **offer** | [**Offer**](Offer.md)|  | [optional] 

### Return type

[**Offer**](Offer.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## offers_destroy

> Offer offers_destroy(id, opts)



Deletes an `Offer` object with the given `id`.

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

api_instance = MergeATSClient::OffersApi.new
id = 'id_example' # String | 
opts = {
  x_account_token: 'x_account_token_example', # String | Token identifying the end user.
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  result = api_instance.offers_destroy(id, opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Exception when calling OffersApi->offers_destroy: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **x_account_token** | **String**| Token identifying the end user. | [optional] 
 **run_async** | **Boolean**| Whether or not third-party updates should be run asynchronously. | [optional] 

### Return type

[**Offer**](Offer.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## offers_list

> PaginatedOfferList offers_list(opts)



Returns a list of `Offer` objects.

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

api_instance = MergeATSClient::OffersApi.new
opts = {
  x_account_token: 'x_account_token_example', # String | Token identifying the end user.
  application_id: 'application_id_example', # String | If provided, will only return offers for this application.
  created_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | If provided, will only return objects created after this datetime.
  created_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | If provided, will only return objects created before this datetime.
  creator_id: 'creator_id_example', # String | If provided, will only return offers created by this user.
  cursor: 56, # Integer | The pagination cursor value.
  expand: 'expand_example', # String | Which relations should be returned in expanded form.
  modified_after: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | If provided, will only return objects modified after this datetime.
  modified_before: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | If provided, will only return objects modified before this datetime.
  page_size: 56, # Integer | Number of results to return per page.
  remote_id: 'remote_id_example' # String | The API provider's ID for the given object.
}

begin
  result = api_instance.offers_list(opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Exception when calling OffersApi->offers_list: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **x_account_token** | **String**| Token identifying the end user. | [optional] 
 **application_id** | [**String**](.md)| If provided, will only return offers for this application. | [optional] 
 **created_after** | **DateTime**| If provided, will only return objects created after this datetime. | [optional] 
 **created_before** | **DateTime**| If provided, will only return objects created before this datetime. | [optional] 
 **creator_id** | [**String**](.md)| If provided, will only return offers created by this user. | [optional] 
 **cursor** | **Integer**| The pagination cursor value. | [optional] 
 **expand** | **String**| Which relations should be returned in expanded form. | [optional] 
 **modified_after** | **DateTime**| If provided, will only return objects modified after this datetime. | [optional] 
 **modified_before** | **DateTime**| If provided, will only return objects modified before this datetime. | [optional] 
 **page_size** | **Integer**| Number of results to return per page. | [optional] 
 **remote_id** | **String**| The API provider&#39;s ID for the given object. | [optional] 

### Return type

[**PaginatedOfferList**](PaginatedOfferList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## offers_partial_update

> Offer offers_partial_update(id, opts)



Updates an `Offer` object with the given `id`.

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

api_instance = MergeATSClient::OffersApi.new
id = 'id_example' # String | 
opts = {
  x_account_token: 'x_account_token_example', # String | Token identifying the end user.
  run_async: true, # Boolean | Whether or not third-party updates should be run asynchronously.
  patched_offer: MergeATSClient::PatchedOffer.new # PatchedOffer | 
}

begin
  result = api_instance.offers_partial_update(id, opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Exception when calling OffersApi->offers_partial_update: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **x_account_token** | **String**| Token identifying the end user. | [optional] 
 **run_async** | **Boolean**| Whether or not third-party updates should be run asynchronously. | [optional] 
 **patched_offer** | [**PatchedOffer**](PatchedOffer.md)|  | [optional] 

### Return type

[**Offer**](Offer.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## offers_retrieve

> Offer offers_retrieve(id, opts)



Returns an `Offer` object with the given `id`.

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

api_instance = MergeATSClient::OffersApi.new
id = 'id_example' # String | 
opts = {
  x_account_token: 'x_account_token_example', # String | Token identifying the end user.
  expand: 'expand_example' # String | Which relations should be returned in expanded form.
}

begin
  result = api_instance.offers_retrieve(id, opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Exception when calling OffersApi->offers_retrieve: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | 
 **x_account_token** | **String**| Token identifying the end user. | [optional] 
 **expand** | **String**| Which relations should be returned in expanded form. | [optional] 

### Return type

[**Offer**](Offer.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

