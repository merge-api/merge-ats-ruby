# MergeATSClient::PaginatedConditionSchemaList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_next** | **String** |  | [optional] |
| **previous** | **String** |  | [optional] |
| **results** | [**Array&lt;ConditionSchema&gt;**](ConditionSchema.md) |  | [optional] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::PaginatedConditionSchemaList.new(
  _next: null,
  previous: null,
  results: null
)
```

