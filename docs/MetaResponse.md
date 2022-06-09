# MergeATSClient::MetaResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_schema** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  |  |
| **status** | [**LinkedAccountStatus**](LinkedAccountStatus.md) |  | [optional] |
| **has_conditional_params** | **Boolean** |  |  |
| **has_required_linked_account_params** | **Boolean** |  |  |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::MetaResponse.new(
  request_schema: null,
  status: null,
  has_conditional_params: null,
  has_required_linked_account_params: null
)
```

