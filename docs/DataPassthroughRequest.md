# MergeATSClient::DataPassthroughRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **method** | [**MethodEnum**](MethodEnum.md) |  |  |
| **path** | **String** |  |  |
| **base_url_override** | **String** |  | [optional] |
| **data** | **String** |  | [optional] |
| **headers** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **request_format** | [**RequestFormatEnum**](RequestFormatEnum.md) |  | [optional] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::DataPassthroughRequest.new(
  method: POST,
  path: /scooters,
  base_url_override: null,
  data: {&quot;company&quot;: &quot;Lime&quot;, &quot;model&quot;: &quot;Gen 2.5&quot;},
  headers: {&quot;EXTRA-HEADER&quot;:&quot;value&quot;},
  request_format: JSON
)
```

