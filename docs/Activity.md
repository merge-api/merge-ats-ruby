# MergeATSClient::Activity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **user** | **String** | The user the performed the action. | [optional] |
| **remote_created_at** | **Time** | When the third party&#39;s activity was created. | [optional] |
| **activity_type** | [**ActivityTypeEnum**](ActivityTypeEnum.md) | The activity&#39;s type. | [optional] |
| **subject** | **String** | The activity&#39;s subject. | [optional] |
| **body** | **String** | The activity&#39;s body. | [optional] |
| **visibility** | [**VisibilityEnum**](VisibilityEnum.md) | The activity&#39;s visibility. | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::Activity.new(
  id: ecbe05ac-62a3-46c5-ab31-4b478b37d1b4,
  remote_id: 198123,
  user: 9d892439-5fab-4dbb-8bd8-34f7f96c7912,
  remote_created_at: 2021-10-15T00:00Z,
  activity_type: NOTE,
  subject: Gil Feig&#39;s interview,
  body: Candidate loves integrations!!.,
  visibility: PRIVATE,
  remote_data: [{&quot;path&quot;:&quot;/actions&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}]
)
```

