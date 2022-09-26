# MergeATSClient::UpdateApplicationStageRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **job_interview_stage** | **String** | The interview stage to move the application to. | [optional] |
| **remote_user_id** | **String** |  | [optional] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::UpdateApplicationStageRequest.new(
  job_interview_stage: null,
  remote_user_id: null
)
```

