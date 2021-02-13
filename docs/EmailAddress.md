# MergeATSClient::EmailAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | The email&#39;s address. | [optional] |
| **email_address_type** | [**EmailAddressTypeEnum**](EmailAddressTypeEnum.md) | The type of email address. | [optional] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::EmailAddress.new(
  value: scooterboy443@gmail.com,
  email_address_type: PERSONAL
)
```

