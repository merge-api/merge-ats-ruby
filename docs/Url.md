# MergeATSClient::Url

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | The site&#39;s url. | [optional] |
| **url_type** | [**UrlTypeEnum**](UrlTypeEnum.md) | The type of site.  * &#x60;PERSONAL&#x60; - PERSONAL * &#x60;COMPANY&#x60; - COMPANY * &#x60;PORTFOLIO&#x60; - PORTFOLIO * &#x60;BLOG&#x60; - BLOG * &#x60;SOCIAL_MEDIA&#x60; - SOCIAL_MEDIA * &#x60;OTHER&#x60; - OTHER * &#x60;JOB_POSTING&#x60; - JOB_POSTING | [optional] |
| **modified_at** | **Time** | This is the datetime that this object was last updated by Merge | [optional][readonly] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::Url.new(
  value: http://alturl.com/p749b,
  url_type: PERSONAL,
  modified_at: 2021-10-16T00:00Z
)
```

