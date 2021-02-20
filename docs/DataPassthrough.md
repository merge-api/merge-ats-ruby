# MergeATSClient::DataPassthrough

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **method** | [**MethodEnum**](MethodEnum.md) |  |  |
| **path** | **String** |  |  |
| **data** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **headers** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::DataPassthrough.new(
  method: POST,
  path: /scooters,
  data: {&quot;scooters&quot;:[{&quot;company&quot;:&quot;Lime&quot;,&quot;model&quot;:&quot;Gen 2.5&quot;},{&quot;company&quot;:&quot;Bird&quot;,&quot;model&quot;:&quot;Bird Zero&quot;}]},
  headers: {&quot;EXTRA-HEADER&quot;:&quot;value&quot;}
)
```

