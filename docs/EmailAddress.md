# MergeATSClient::EmailAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | The email address. | [optional] |
| **email_address_type** | [**EmailAddressTypeEnum**](EmailAddressTypeEnum.md) | The type of email address.  * &#x60;PERSONAL&#x60; - PERSONAL * &#x60;WORK&#x60; - WORK * &#x60;OTHER&#x60; - OTHER | [optional] |
| **modified_at** | **Time** | This is the datetime that this object was last updated by Merge | [optional][readonly] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::EmailAddress.new(
  value: merge_is_hiring@merge.dev,
  email_address_type: PERSONAL,
  modified_at: 2021-10-16T00:00Z
)
```

