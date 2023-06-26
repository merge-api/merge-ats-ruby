# MergeATSClient::ScheduledInterviewResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model** | [**ScheduledInterview**](ScheduledInterview.md) |  |  |
| **warnings** | [**Array&lt;WarningValidationProblem&gt;**](WarningValidationProblem.md) |  |  |
| **errors** | [**Array&lt;ErrorValidationProblem&gt;**](ErrorValidationProblem.md) |  |  |
| **logs** | [**Array&lt;DebugModeLog&gt;**](DebugModeLog.md) |  | [optional] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::ScheduledInterviewResponse.new(
  model: null,
  warnings: null,
  errors: null,
  logs: null
)
```

