# MergeATSClient::AvailableActions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_name** | **String** |  |  |
| **available_operations** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::AvailableActions.new(
  model_name: Candidate,
  available_operations: [&quot;FETCH&quot;,&quot;CREATE&quot;]
)
```

