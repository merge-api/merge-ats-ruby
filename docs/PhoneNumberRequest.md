# MergeATSClient::PhoneNumberRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | The phone number. | [optional] |
| **phone_number_type** | [**PhoneNumberTypeEnum**](PhoneNumberTypeEnum.md) | The type of phone number.  * &#x60;HOME&#x60; - HOME * &#x60;WORK&#x60; - WORK * &#x60;MOBILE&#x60; - MOBILE * &#x60;SKYPE&#x60; - SKYPE * &#x60;OTHER&#x60; - OTHER | [optional] |
| **integration_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **linked_account_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::PhoneNumberRequest.new(
  value: +3198675309,
  phone_number_type: HOME,
  integration_params: {&quot;unique_integration_field&quot;:&quot;unique_integration_field_value&quot;},
  linked_account_params: {&quot;unique_linked_account_field&quot;:&quot;unique_linked_account_field_value&quot;}
)
```

