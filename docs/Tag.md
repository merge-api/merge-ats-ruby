# MergeATSClient::Tag

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **name** | **String** | The tag&#39;s name. | [optional] |
| **remote_data** | **Array&lt;Hash&lt;String, AnyType&gt;&gt;** |  | [optional] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted on the third-party. | [optional] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::Tag.new(
  remote_id: 4567,
  name: High-Priority,
  remote_data: [{&quot;path&quot;:&quot;/tags&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}],
  remote_was_deleted: null
)
```

