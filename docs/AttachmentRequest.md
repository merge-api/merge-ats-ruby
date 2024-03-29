# MergeATSClient::AttachmentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_name** | **String** | The attachment&#39;s name. | [optional] |
| **file_url** | **String** | The attachment&#39;s url. | [optional] |
| **candidate** | **String** |  | [optional] |
| **attachment_type** | [**AttachmentTypeEnum**](AttachmentTypeEnum.md) | The attachment&#39;s type.  * &#x60;RESUME&#x60; - RESUME * &#x60;COVER_LETTER&#x60; - COVER_LETTER * &#x60;OFFER_LETTER&#x60; - OFFER_LETTER * &#x60;OTHER&#x60; - OTHER | [optional] |
| **integration_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **linked_account_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::AttachmentRequest.new(
  file_name: Candidate Resume,
  file_url: http://alturl.com/p749b,
  candidate: 2872ba14-4084-492b-be96-e5eee6fc33ef,
  attachment_type: RESUME,
  integration_params: {&quot;unique_integration_field&quot;:&quot;unique_integration_field_value&quot;},
  linked_account_params: {&quot;unique_linked_account_field&quot;:&quot;unique_linked_account_field_value&quot;}
)
```

