# MergeATSClient::RemoteUserRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **first_name** | **String** | The user&#39;s first name. | [optional] |
| **last_name** | **String** | The user&#39;s last name. | [optional] |
| **email** | **String** | The user&#39;s email. | [optional] |
| **disabled** | **Boolean** | Whether the user&#39;s account had been disabled. | [optional] |
| **remote_created_at** | **Time** | When the third party&#39;s user was created. | [optional] |
| **access_role** | [**AccessRoleEnum**](AccessRoleEnum.md) | The user&#39;s role. | [optional] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::RemoteUserRequest.new(
  remote_id: 344321,
  first_name: Shensi,
  last_name: Ding,
  email: hello@merge.dev,
  disabled: null,
  remote_created_at: null,
  access_role: SUPER_ADMIN
)
```

