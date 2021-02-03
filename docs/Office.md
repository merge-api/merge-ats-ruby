# MergeATSClient::Office

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **name** | **String** | The office&#39;s name. | [optional] |
| **location** | **String** | The office&#39;s location. | [optional] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::Office.new(
  id: 9871b4a9-f5d2-4f3b-a66b-dfedbed42c46,
  remote_id: 876556788,
  name: SF Office,
  location: Embarcadero Center 2
)
```

