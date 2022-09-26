# MergeATSClient::RejectReason

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **name** | **String** | The rejection reason’s name. | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted by third party webhooks. | [optional][readonly] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::RejectReason.new(
  id: 8be99a4a-f8d4-4339-bf1e-30eac970e217,
  remote_id: 876556788,
  name: Not passionate enough about APIs.,
  remote_data: [{&quot;path&quot;:&quot;/rejection-reasons&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}],
  remote_was_deleted: null
)
```

