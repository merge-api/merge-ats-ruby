# MergeATSClient::JobInterviewStage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **name** | **String** | Standard stage names are offered by ATS systems but can be modified by users. | [optional] |
| **job** | **String** | This field is populated only if the stage is specific to a particular job. If the stage is generic, this field will not be populated. | [optional] |
| **stage_order** | **Integer** | The stage’s order, with the lowest values ordered first. If the third-party does not return details on the order of stages, this field will not be populated. | [optional] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted by third party webhooks. | [optional][readonly] |
| **modified_at** | **Time** | This is the datetime that this object was last updated by Merge | [optional][readonly] |
| **field_mappings** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional][readonly] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::JobInterviewStage.new(
  id: f9813dd5-e70b-484c-91d8-00acd6065b07,
  remote_id: 876556788,
  name: Phone Screen,
  job: ba7d9648-5316-4a80-8d73-4e636cef5a90,
  stage_order: 2,
  remote_was_deleted: null,
  modified_at: 2021-10-16T00:00Z,
  field_mappings: {&quot;organization_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;},&quot;linked_account_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;}},
  remote_data: [{&quot;path&quot;:&quot;/interview-stages&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}]
)
```

