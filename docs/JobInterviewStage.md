# MergeATSClient::JobInterviewStage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **name** | **String** | The stage&#39;s name. | [optional] |
| **job** | **String** | This field is populated only if the stage is specific to a particular job. If the stage is generic, this field will not be populated. | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted by third party webhooks. | [optional][readonly] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::JobInterviewStage.new(
  id: f9813dd5-e70b-484c-91d8-00acd6065b07,
  remote_id: 876556788,
  name: Phone Screen,
  job: ba7d9648-5316-4a80-8d73-4e636cef5a90,
  remote_data: [{&quot;path&quot;:&quot;/interview-stages&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}],
  remote_was_deleted: null
)
```

