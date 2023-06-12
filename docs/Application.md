# MergeATSClient::Application

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **candidate** | **String** | The candidate applying. | [optional] |
| **job** | **String** | The job being applied for. | [optional] |
| **applied_at** | **Time** | When the application was submitted. | [optional] |
| **rejected_at** | **Time** | When the application was rejected. | [optional] |
| **source** | **String** | The application&#39;s source. | [optional] |
| **credited_to** | **String** | The user credited for this application. | [optional] |
| **current_stage** | **String** | The application&#39;s current stage. | [optional] |
| **reject_reason** | **String** | The application&#39;s reason for rejection. | [optional] |
| **remote_was_deleted** | **Boolean** |  | [optional][readonly] |
| **field_mappings** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional][readonly] |
| **modified_at** | **Time** | This is the datetime that this object was last updated by Merge | [optional][readonly] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::Application.new(
  id: 92e8a369-fffe-430d-b93a-f7e8a16563f1,
  remote_id: 98796,
  candidate: 2872ba14-4084-492b-be96-e5eee6fc33ef,
  job: 52bf9b5e-0beb-4f6f-8a72-cd4dca7ca633,
  applied_at: 2021-10-15T00:00Z,
  rejected_at: 2021-11-15T00:00Z,
  source: Campus recruiting event,
  credited_to: 58166795-8d68-4b30-9bfb-bfd402479484,
  current_stage: d578dfdc-7b0a-4ab6-a2b0-4b40f20eb9ea,
  reject_reason: 59b25f2b-da02-40f5-9656-9fa0db555784,
  remote_was_deleted: null,
  field_mappings: {&quot;organization_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;},&quot;linked_account_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;}},
  modified_at: 2021-10-16T00:00Z,
  remote_data: [{&quot;path&quot;:&quot;/candidacies&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}]
)
```

