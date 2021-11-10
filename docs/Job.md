# MergeATSClient::Job

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **name** | **String** | The job&#39;s name. | [optional] |
| **description** | **String** | The job&#39;s description. | [optional] |
| **code** | **String** | The job&#39;s code. Typically an additional identifier used to reference the particular job that is displayed on the ATS. | [optional] |
| **status** | [**JobStatusEnum**](JobStatusEnum.md) | The job&#39;s status. | [optional] |
| **remote_created_at** | **Time** | When the third party&#39;s job was created. | [optional] |
| **remote_updated_at** | **Time** | When the third party&#39;s job was updated. | [optional] |
| **confidential** | **Boolean** | Whether the job is confidential. | [optional] |
| **departments** | **Array&lt;String&gt;** | IDs of &#x60;Department&#x60; objects for this &#x60;Job&#x60;. | [optional] |
| **offices** | **Array&lt;String&gt;** | IDs of &#x60;Office&#x60; objects for this &#x60;Job&#x60;. | [optional] |
| **hiring_managers** | **Array&lt;String&gt;** | IDs of &#x60;RemoteUser&#x60; objects that serve as hiring managers for this &#x60;Job&#x60;. | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::Job.new(
  id: 022a2bef-57e5-4def-8ed2-7c41bd9a5ed8,
  remote_id: 8765432,
  name: Software Engineer (Merge is actually hiring btw),
  description: &lt;b&gt;If you&#39;re reading this documentation, you might be a good fit for Merge!&lt;/b&gt;,
  code: C0025,
  status: OPEN,
  remote_created_at: 2021-10-15T00:00Z,
  remote_updated_at: 2021-10-16T00:00Z,
  confidential: true,
  departments: [&quot;5b3c1341-a20f-4e51-b72c-f3830a16c97b&quot;,&quot;d6e687d6-0c36-48a1-8114-35324b5cb38f&quot;],
  offices: [&quot;9871b4a9-f5d2-4f3b-a66b-dfedbed42c46&quot;],
  hiring_managers: [&quot;787ed912-33ec-444e-a215-8d71cc42fc12&quot;],
  remote_data: [{&quot;path&quot;:&quot;/positions&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}]
)
```

