# MergeATSClient::PatchedPhoneNumber

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**value** | **String** | The phone number. | [optional] 
**phone_number_type** | [**PhoneNumberTypeEnum**](PhoneNumberTypeEnum.md) | The type of phone number. | [optional] 

## Code Sample

```ruby
require 'MergeATSClient'

instance = MergeATSClient::PatchedPhoneNumber.new(value: +3198675309,
                                 phone_number_type: HOME)
```


