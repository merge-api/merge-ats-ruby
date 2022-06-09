# MergeATSClient::Attachment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **file_name** | **String** | The attachment&#39;s name. | [optional] |
| **file_url** | **String** | The attachment&#39;s url. | [optional] |
| **candidate** | **String** |  | [optional] |
| **attachment_type** | [**AttachmentTypeEnum**](AttachmentTypeEnum.md) | The attachment&#39;s type. | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |
| **remote_was_deleted** | **Boolean** |  | [optional][readonly] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::Attachment.new(
  id: c640b80b-fac9-409f-aa19-1f9221aec445,
  remote_id: 11167,
  file_name: Candidate Resume,
  file_url: http://alturl.com/p749b,
  candidate: 2872ba14-4084-492b-be96-e5eee6fc33ef,
  attachment_type: RESUME,
  remote_data: [{&quot;path&quot;:&quot;/attachments&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}],
  remote_was_deleted: null
)
```

