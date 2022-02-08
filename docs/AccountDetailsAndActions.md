# MergeATSClient::AccountDetailsAndActions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **category** | [**CategoryEnum**](CategoryEnum.md) |  | [optional] |
| **status** | [**AccountDetailsAndActionsStatusEnum**](AccountDetailsAndActionsStatusEnum.md) |  |  |
| **status_detail** | **String** |  | [optional] |
| **end_user_origin_id** | **String** |  | [optional] |
| **end_user_organization_name** | **String** |  |  |
| **end_user_email_address** | **String** |  |  |
| **integration** | [**AccountDetailsAndActionsIntegration**](AccountDetailsAndActionsIntegration.md) |  | [optional] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::AccountDetailsAndActions.new(
  id: e59b1821-f85c-4e28-a6b3-1804156f3563,
  category: hris,
  status: COMPLETE,
  status_detail: null,
  end_user_origin_id: 3ac95cde-6c7f-4eef-afec-be710b42308d,
  end_user_organization_name: Foo Bar, LLC,
  end_user_email_address: hradmin@foobar.dev,
  integration: null
)
```

