# MergeATSClient::RejectReason

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] [readonly] 
**remote_id** | **String** | The third-party API ID of the matching object. | [optional] 
**name** | **String** | The reason&#39;s name. | [optional] 

## Code Sample

```ruby
require 'MergeATSClient'

instance = MergeATSClient::RejectReason.new(id: 8be99a4a-f8d4-4339-bf1e-30eac970e217,
                                 remote_id: 876556788,
                                 name: Not passionate enough about scooters.)
```


