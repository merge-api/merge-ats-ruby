# MergeATSClient::ApplicationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **candidate** | **String** |  | [optional] |
| **job** | **String** |  | [optional] |
| **applied_at** | **Time** | When the application was submitted. | [optional] |
| **rejected_at** | **Time** | When the application was rejected. | [optional] |
| **source** | **String** | The application&#39;s source. | [optional] |
| **credited_to** | **String** |  | [optional] |
| **current_stage** | **String** |  | [optional] |
| **reject_reason** | **String** |  | [optional] |
| **custom_fields** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) | Custom fields configured for a given model. | [optional] |
| **remote_template_id** | **String** |  | [optional] |
| **integration_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **linked_account_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::ApplicationRequest.new(
  remote_id: 98796,
  candidate: 2872ba14-4084-492b-be96-e5eee6fc33ef,
  job: 52bf9b5e-0beb-4f6f-8a72-cd4dca7ca633,
  applied_at: 2021-10-15T00:00Z,
  rejected_at: 2021-11-15T00:00Z,
  source: Campus recruiting event,
  credited_to: 58166795-8d68-4b30-9bfb-bfd402479484,
  current_stage: d578dfdc-7b0a-4ab6-a2b0-4b40f20eb9ea,
  reject_reason: 59b25f2b-da02-40f5-9656-9fa0db555784,
  custom_fields: null,
  remote_template_id: 92830948203,
  integration_params: {&quot;unique_integration_field&quot;:&quot;unique_integration_field_value&quot;},
  linked_account_params: {&quot;unique_linked_account_field&quot;:&quot;unique_linked_account_field_value&quot;}
)
```

