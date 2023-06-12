# MergeATSClient::Issue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **status** | [**IssueStatusEnum**](IssueStatusEnum.md) | Status of the issue. Options: (&#39;ONGOING&#39;, &#39;RESOLVED&#39;)  * &#x60;ONGOING&#x60; - ONGOING * &#x60;RESOLVED&#x60; - RESOLVED | [optional] |
| **error_description** | **String** |  |  |
| **end_user** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional][readonly] |
| **first_incident_time** | **Time** |  | [optional] |
| **last_incident_time** | **Time** |  | [optional] |
| **is_muted** | **Boolean** |  | [optional][readonly] |
| **error_details** | **Array&lt;String&gt;** |  | [optional][readonly] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::Issue.new(
  id: 3fa85f64-5717-4562-b3fc-2c963f66afa6,
  status: ONGOING,
  error_description: string,
  end_user: b82302de-852e-4e60-b050-edf9da3b7c02,
  first_incident_time: 2022-12-05T16:19:15.161Z,
  last_incident_time: 2022-12-05T16:19:15.161Z,
  is_muted: true,
  error_details: [&quot;Missing employee permissions.&quot;,&quot;Missing time off permissions.&quot;]
)
```

