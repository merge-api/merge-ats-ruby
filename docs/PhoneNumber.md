# MergeATSClient::PhoneNumber

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | The phone number. | [optional] |
| **phone_number_type** | [**PhoneNumberTypeEnum**](PhoneNumberTypeEnum.md) | The type of phone number.  * &#x60;HOME&#x60; - HOME * &#x60;WORK&#x60; - WORK * &#x60;MOBILE&#x60; - MOBILE * &#x60;SKYPE&#x60; - SKYPE * &#x60;OTHER&#x60; - OTHER | [optional] |
| **modified_at** | **Time** | This is the datetime that this object was last updated by Merge | [optional][readonly] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::PhoneNumber.new(
  value: +3198675309,
  phone_number_type: HOME,
  modified_at: 2021-10-16T00:00Z
)
```

