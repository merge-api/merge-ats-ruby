# MergeATSClient::LinkedAccountCondition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **condition_schema_id** | **String** | The ID indicating which condition schema to use for a specific condition. |  |
| **common_model** | **String** | The common model for a specific condition. | [optional][readonly] |
| **native_name** | **String** | User-facing *native condition* name. e.g. \&quot;Skip Manager\&quot;. |  |
| **operator** | **String** | The operator for a specific condition. |  |
| **value** | [**AnyType**](.md) | The value for a condition. | [optional][readonly] |
| **field_name** | **String** | The name of the field on the common model that this condition corresponds to, if they conceptually match. e.g. \&quot;location_type\&quot;. |  |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::LinkedAccountCondition.new(
  condition_schema_id: null,
  common_model: null,
  native_name: null,
  operator: null,
  value: null,
  field_name: null
)
```

