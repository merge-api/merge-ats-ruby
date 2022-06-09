# MergeATSClient::DebugModeLog

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **log_id** | **String** |  |  |
| **dashboard_view** | **String** |  |  |
| **log_summary** | [**DebugModelLogSummary**](DebugModelLogSummary.md) |  |  |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::DebugModeLog.new(
  log_id: 99433219-8017-4acd-bb3c-ceb23d663832,
  dashboard_view: https://app.merge.dev/logs/99433219-8017-4acd-bb3c-ceb23d663832,
  log_summary: null
)
```

