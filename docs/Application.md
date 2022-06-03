# MergeATSClient::Application

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **candidate** | **String** |  | [optional] |
| **job** | **String** |  | [optional] |
| **applied_at** | **Time** | When the application was submitted. | [optional] |
| **rejected_at** | **Time** | When the application was rejected. | [optional] |
| **source** | **String** | The application&#39;s source. | [optional] |
| **credited_to** | **String** |  | [optional] |
| **current_stage** | **String** |  | [optional] |
| **reject_reason** | **String** |  | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |
| **custom_fields** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) | Custom fields configured for a given model. | [optional] |
| **remote_was_deleted** | **Boolean** |  | [optional][readonly] |

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
  remote_data: [{&quot;path&quot;:&quot;/candidacies&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}],
  custom_fields: null,
  remote_was_deleted: null
)
```

