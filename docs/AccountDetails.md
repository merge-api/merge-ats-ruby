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
  id: 0496d4c2-42e6-4072-80b3-7b69bfdc76fd,
  integration: BambooHR,
  category: hris,
  end_user_origin_id: 3fa85f64-5717-4562-b3fc-2c963f66afa6,
  end_user_organization_name: Waystar Royco,
  end_user_email_address: kendall.roy@waystar-royco.com,
  status: COMPLETE
)
```

