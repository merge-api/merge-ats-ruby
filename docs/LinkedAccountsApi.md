# MergeATSClient::LinkedAccountsApi

All URIs are relative to *https://api.merge.dev/api/ats/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**linked_accounts_list**](LinkedAccountsApi.md#linked_accounts_list) | **GET** /linked-accounts |  |


## linked_accounts_list

> <PaginatedAccountDetailsAndActionsList> linked_accounts_list(opts)



List linked accounts for your organization.

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

api_instance = MergeATSClient::LinkedAccountsApi.new
opts = {
  category: 'accounting', # String | 
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  end_user_email_address: 'end_user_email_address_example', # String | If provided, will only return linked accounts associated with the given email address.
  end_user_organization_name: 'end_user_organization_name_example', # String | If provided, will only return linked accounts associated with the given organization name.
  end_user_origin_id: 'end_user_origin_id_example', # String | If provided, will only return linked accounts associated with the given origin ID.
  end_user_origin_ids: 'end_user_origin_ids_example', # String | Comma-separated list of EndUser origin IDs, making it possible to specify multiple EndUsers at once.
  id: TODO, # String | 
  ids: 'ids_example', # String | Comma-separated list of LinkedAccount IDs, making it possible to specify multiple LinkedAccounts at once.
  include_duplicates: true, # Boolean | If `true`, will include complete production duplicates of the account specified by the `id` query parameter in the response. `id` must be for a complete production linked account.
  integration_name: 'integration_name_example', # String | If provided, will only return linked accounts associated with the given integration name.
  is_test_account: 'is_test_account_example', # String | If included, will only include test linked accounts. If not included, will only include non-test linked accounts.
  page_size: 56, # Integer | Number of results to return per page.
  status: 'status_example' # String | Filter by status. Options: `COMPLETE`, `INCOMPLETE`, `RELINK_NEEDED`
}

begin
  
  result = api_instance.linked_accounts_list(opts)
  p result
rescue MergeATSClient::ApiError => e
  puts "Error when calling LinkedAccountsApi->linked_accounts_list: #{e}"
end
```

#### Using the linked_accounts_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedAccountDetailsAndActionsList>, Integer, Hash)> linked_accounts_list_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.linked_accounts_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedAccountDetailsAndActionsList>
rescue MergeATSClient::ApiError => e
  puts "Error when calling LinkedAccountsApi->linked_accounts_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category** | **String** |  | [optional] |
| **cursor** | **String** | The pagination cursor value. | [optional] |
| **end_user_email_address** | **String** | If provided, will only return linked accounts associated with the given email address. | [optional] |
| **end_user_organization_name** | **String** | If provided, will only return linked accounts associated with the given organization name. | [optional] |
| **end_user_origin_id** | **String** | If provided, will only return linked accounts associated with the given origin ID. | [optional] |
| **end_user_origin_ids** | **String** | Comma-separated list of EndUser origin IDs, making it possible to specify multiple EndUsers at once. | [optional] |
| **id** | [**String**](.md) |  | [optional] |
| **ids** | **String** | Comma-separated list of LinkedAccount IDs, making it possible to specify multiple LinkedAccounts at once. | [optional] |
| **include_duplicates** | **Boolean** | If &#x60;true&#x60;, will include complete production duplicates of the account specified by the &#x60;id&#x60; query parameter in the response. &#x60;id&#x60; must be for a complete production linked account. | [optional] |
| **integration_name** | **String** | If provided, will only return linked accounts associated with the given integration name. | [optional] |
| **is_test_account** | **String** | If included, will only include test linked accounts. If not included, will only include non-test linked accounts. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |
| **status** | **String** | Filter by status. Options: &#x60;COMPLETE&#x60;, &#x60;INCOMPLETE&#x60;, &#x60;RELINK_NEEDED&#x60; | [optional] |

### Return type

[**PaginatedAccountDetailsAndActionsList**](PaginatedAccountDetailsAndActionsList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

