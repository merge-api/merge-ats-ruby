# MergeATSClient::AvailableActions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **integration** | [**AccountIntegration**](AccountIntegration.md) |  |  |
| **passthrough_available** | **Boolean** |  |  |
| **available_model_operations** | [**Array&lt;ModelOperation&gt;**](ModelOperation.md) |  | [optional] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::AvailableActions.new(
  integration: null,
  passthrough_available: true,
  available_model_operations: [{&quot;model_name&quot;:&quot;Candidate&quot;,&quot;available_operations&quot;:[&quot;FETCH&quot;,&quot;CREATE&quot;],&quot;required_post_parameters&quot;:[&quot;remote_user_id&quot;],&quot;supported_fields&quot;:[&quot;first_name&quot;,&quot;last_name&quot;,&quot;company&quot;,&quot;title&quot;]}]
)
```

