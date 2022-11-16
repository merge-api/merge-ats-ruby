# MergeATSClient::LinkedAccountSelectiveSyncConfigurationListRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sync_configurations** | [**Array&lt;LinkedAccountSelectiveSyncConfigurationRequest&gt;**](LinkedAccountSelectiveSyncConfigurationRequest.md) | The selective syncs associated with a linked account. |  |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::LinkedAccountSelectiveSyncConfigurationListRequest.new(
  sync_configurations: null
)
```

