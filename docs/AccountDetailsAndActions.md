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
| **webhook_listener_url** | **String** |  |  |
| **is_duplicate** | **Boolean** | Whether a Production Linked Account&#39;s credentials match another existing Production Linked Account. This field is &#x60;null&#x60; for Test Linked Accounts, incomplete Production Linked Accounts, and ignored duplicate Production Linked Account sets. | [optional] |
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
  webhook_listener_url: https://api.merge.dev/api/integrations/webhook-listener/7fc3mee0UW8ecV4,
  is_duplicate: true,
  integration: null
)
```

