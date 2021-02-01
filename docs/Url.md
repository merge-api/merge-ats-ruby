# MergeATSClient::Url

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | The site&#39;s url. | [optional] |
| **url_type** | [**UrlTypeEnum**](UrlTypeEnum.md) | The type of site. | [optional] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::Url.new(
  value: http://alturl.com/p749b,
  url_type: null
)
```

