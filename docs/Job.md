# MergeATSClient::Job

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **name** | **String** | The job&#39;s name. | [optional] |
| **status** | [**JobStatusEnum**](JobStatusEnum.md) | The job&#39;s status. | [optional] |
| **remote_created_at** | **Time** | When the third party&#39;s job was created. | [optional] |
| **remote_updated_at** | **Time** | When the third party&#39;s job was updated. | [optional] |
| **confidential** | **Boolean** | Whether the job is confidential. | [optional] |
| **departments** | **Array&lt;String&gt;** |  | [optional] |
| **offices** | **Array&lt;String&gt;** |  | [optional] |
| **hiring_managers** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::Job.new(
  id: 022a2bef-57e5-4def-8ed2-7c41bd9a5ed8,
  remote_id: 8765432,
  name: Software Engineer,
  status: OPEN,
  remote_created_at: null,
  remote_updated_at: null,
  confidential: true,
  departments: [&quot;5b3c1341-a20f-4e51-b72c-f3830a16c97b&quot;,&quot;d6e687d6-0c36-48a1-8114-35324b5cb38f&quot;],
  offices: [&quot;9871b4a9-f5d2-4f3b-a66b-dfedbed42c46&quot;],
  hiring_managers: [&quot;787ed912-33ec-444e-a215-8d71cc42fc12&quot;]
)
```

