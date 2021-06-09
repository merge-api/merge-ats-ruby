# MergeATSClient::PaginatedSyncStatusList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_next** | **String** |  | [optional] |
| **previous** | **String** |  | [optional] |
| **results** | [**Array&lt;SyncStatus&gt;**](SyncStatus.md) |  | [optional] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::PaginatedSyncStatusList.new(
  _next: null,
  previous: null,
  results: null
)
```

