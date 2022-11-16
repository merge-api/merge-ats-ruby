# MergeATSClient::OperatorSchema

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **operator** | **String** | The operator for which an operator schema is defined. | [optional][readonly] |
| **is_unique** | **Boolean** | Whether the operator can be repeated multiple times. | [optional][readonly] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::OperatorSchema.new(
  operator: null,
  is_unique: null
)
```

