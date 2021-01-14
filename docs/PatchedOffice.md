# MergeATSClient::PatchedOffice

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] [readonly] 
**remote_id** | **String** | The third-party API ID of the matching object. | [optional] 
**name** | **String** | The job&#39;s name. | [optional] 
**location** | **String** | The candidate&#39;s location. | [optional] 

## Code Sample

```ruby
require 'MergeATSClient'

instance = MergeATSClient::PatchedOffice.new(id: 9871b4a9-f5d2-4f3b-a66b-dfedbed42c46,
                                 remote_id: 876556788,
                                 name: Underground Bunker,
                                 location: Embarcadero Center 2)
```


