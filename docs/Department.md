# MergeATSClient::Department

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **name** | **String** | The department&#39;s name. | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted on the third-party. | [optional][readonly] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::Department.new(
  id: 5b3c1341-a20f-4e51-b72c-f3830a16c97b,
  remote_id: 23456,
  name: Engineering,
  remote_data: [{&quot;path&quot;:&quot;/departments&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}],
  remote_was_deleted: null
)
```

