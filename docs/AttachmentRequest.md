# MergeATSClient::AttachmentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **file_name** | **String** | The attachment&#39;s name. | [optional] |
| **file_url** | **String** | The attachment&#39;s url. | [optional] |
| **candidate** | **String** |  | [optional] |
| **attachment_type** | [**AttachmentTypeEnum**](AttachmentTypeEnum.md) | The attachment&#39;s type. | [optional] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::AttachmentRequest.new(
  remote_id: 11167,
  file_name: Candidate Resume,
  file_url: http://alturl.com/p749b,
  candidate: 2872ba14-4084-492b-be96-e5eee6fc33ef,
  attachment_type: RESUME
)
```

