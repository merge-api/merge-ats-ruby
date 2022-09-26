# MergeATSClient::RemoteResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **method** | **String** |  |  |
| **path** | **String** |  |  |
| **status** | **Integer** |  |  |
| **response** | [**AnyType**](.md) |  |  |
| **response_headers** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **response_type** | [**ResponseTypeEnum**](ResponseTypeEnum.md) |  | [optional] |
| **headers** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::RemoteResponse.new(
  method: GET,
  path: /scooters,
  status: 200,
  response: {&quot;scooters&quot;:[{&quot;company&quot;:&quot;Lime&quot;,&quot;model&quot;:&quot;Gen 2.5&quot;},{&quot;company&quot;:&quot;Bird&quot;,&quot;model&quot;:&quot;Bird Zero&quot;}]},
  response_headers: {&quot;X-Page-Token&quot;:&quot;value&quot;},
  response_type: JSON,
  headers: {&quot;EXTRA-HEADER&quot;:&quot;value&quot;,&quot;Authorization&quot;:&quot;&lt;redacted&gt;&quot;}
)
```

