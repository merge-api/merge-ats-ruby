# MergeATSClient::AccountDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **integration** | **String** |  | [optional][readonly] |
| **category** | [**CategoryEnum**](CategoryEnum.md) |  | [optional] |
| **end_user_origin_id** | **String** |  | [optional][readonly] |
| **end_user_organization_name** | **String** |  | [optional][readonly] |
| **end_user_email_address** | **String** |  | [optional][readonly] |
| **status** | **String** |  | [optional][readonly] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::AccountDetails.new(
  id: null,
  integration: null,
  category: null,
  end_user_origin_id: null,
  end_user_organization_name: null,
  end_user_email_address: null,
  status: null
)
```

