# MergeATSClient::UrlRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | The site&#39;s url. | [optional] |
| **url_type** | [**UrlTypeEnum**](UrlTypeEnum.md) | The type of site.  * &#x60;PERSONAL&#x60; - PERSONAL * &#x60;COMPANY&#x60; - COMPANY * &#x60;PORTFOLIO&#x60; - PORTFOLIO * &#x60;BLOG&#x60; - BLOG * &#x60;SOCIAL_MEDIA&#x60; - SOCIAL_MEDIA * &#x60;OTHER&#x60; - OTHER * &#x60;JOB_POSTING&#x60; - JOB_POSTING | [optional] |
| **integration_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **linked_account_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::UrlRequest.new(
  value: http://alturl.com/p749b,
  url_type: PERSONAL,
  integration_params: {&quot;unique_integration_field&quot;:&quot;unique_integration_field_value&quot;},
  linked_account_params: {&quot;unique_linked_account_field&quot;:&quot;unique_linked_account_field_value&quot;}
)
```

