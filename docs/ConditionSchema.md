# MergeATSClient::ConditionSchema

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the condition schema. This ID is used when updating selective syncs for a linked account. |  |
| **common_model** | **String** | The common model for which a condition schema is defined. | [optional][readonly] |
| **native_name** | **String** | User-facing *native condition* name. e.g. \&quot;Skip Manager\&quot;. |  |
| **field_name** | **String** | The name of the field on the common model that this condition corresponds to, if they conceptually match. e.g. \&quot;location_type\&quot;. |  |
| **is_unique** | **Boolean** | Whether this condition can only be applied once. If false, the condition can be AND&#39;d together multiple times. | [optional] |
| **condition_type** | [**ConditionTypeEnum**](ConditionTypeEnum.md) | The type of value(s) that can be set for this condition.  * &#x60;BOOLEAN&#x60; - BOOLEAN * &#x60;DATE&#x60; - DATE * &#x60;DATE_TIME&#x60; - DATE_TIME * &#x60;INTEGER&#x60; - INTEGER * &#x60;FLOAT&#x60; - FLOAT * &#x60;STRING&#x60; - STRING * &#x60;LIST_OF_STRINGS&#x60; - LIST_OF_STRINGS |  |
| **operators** | [**Array&lt;OperatorSchema&gt;**](OperatorSchema.md) | The schemas for the operators that can be used on a condition. |  |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::ConditionSchema.new(
  id: null,
  common_model: null,
  native_name: null,
  field_name: null,
  is_unique: null,
  condition_type: null,
  operators: null
)
```

