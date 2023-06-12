# MergeATSClient::RemoteUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **first_name** | **String** | The user&#39;s first name. | [optional] |
| **last_name** | **String** | The user&#39;s last name. | [optional] |
| **email** | **String** | The user&#39;s email. | [optional] |
| **disabled** | **Boolean** | Whether the user&#39;s account had been disabled. | [optional] |
| **remote_created_at** | **Time** | When the third party&#39;s user was created. | [optional] |
| **access_role** | [**AccessRoleEnum**](AccessRoleEnum.md) | The user&#39;s role.  * &#x60;SUPER_ADMIN&#x60; - SUPER_ADMIN * &#x60;ADMIN&#x60; - ADMIN * &#x60;TEAM_MEMBER&#x60; - TEAM_MEMBER * &#x60;LIMITED_TEAM_MEMBER&#x60; - LIMITED_TEAM_MEMBER * &#x60;INTERVIEWER&#x60; - INTERVIEWER | [optional] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted by third party webhooks. | [optional][readonly] |
| **field_mappings** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional][readonly] |
| **modified_at** | **Time** | This is the datetime that this object was last updated by Merge | [optional][readonly] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::RemoteUser.new(
  id: b82302de-852e-4e60-b050-edf9da3b7c02,
  remote_id: 344321,
  first_name: Shensi,
  last_name: Ding,
  email: hello@merge.dev,
  disabled: null,
  remote_created_at: 2020-11-10T00:00Z,
  access_role: SUPER_ADMIN,
  remote_was_deleted: null,
  field_mappings: {&quot;organization_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;},&quot;linked_account_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;}},
  modified_at: 2021-10-16T00:00Z,
  remote_data: [{&quot;path&quot;:&quot;/users&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}]
)
```

