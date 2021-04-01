# MergeATSClient::PhoneNumberRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | The phone number. | [optional] |
| **phone_number_type** | [**PhoneNumberTypeEnum**](PhoneNumberTypeEnum.md) | The type of phone number. | [optional] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::PhoneNumberRequest.new(
  value: +3198675309,
  phone_number_type: HOME
)
```

