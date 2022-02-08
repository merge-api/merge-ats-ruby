# MergeATSClient::DebugModelLogSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** |  |  |
| **method** | **String** |  |  |
| **status_code** | **Integer** |  |  |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::DebugModelLogSummary.new(
  url: https://harvest.greenhouse.io/v1/candidates/,
  method: POST,
  status_code: 200
)
```

