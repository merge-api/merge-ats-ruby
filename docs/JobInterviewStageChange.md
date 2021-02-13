# MergeATSClient::JobInterviewStageChange

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **to_stage** | **String** | The stage the application changed to. | [optional] |
| **remote_updated_at** | **Time** | The date and time of the change. | [optional] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::JobInterviewStageChange.new(
  to_stage: null,
  remote_updated_at: null
)
```

