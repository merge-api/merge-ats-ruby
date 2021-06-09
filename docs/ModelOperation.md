# MergeATSClient::ModelOperation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_name** | **String** |  |  |
| **available_operations** | **Array&lt;String&gt;** |  |  |
| **required_post_parameters** | **Array&lt;String&gt;** |  |  |
| **supported_fields** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::ModelOperation.new(
  model_name: Candidate,
  available_operations: [&quot;FETCH&quot;,&quot;CREATE&quot;],
  required_post_parameters: [&quot;remote_user_id&quot;],
  supported_fields: [&quot;first_name&quot;,&quot;last_name&quot;,&quot;company&quot;,&quot;title&quot;]
)
```

