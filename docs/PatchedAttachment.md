# MergeATSClient::PatchedAttachment

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] [readonly] 
**remote_id** | **String** | The third-party API ID of the matching object. | [optional] 
**file_name** | **String** | The attachment&#39;s name. | [optional] 
**file_url** | **String** | The attachment&#39;s url. | [optional] 

## Code Sample

```ruby
require 'MergeATSClient'

instance = MergeATSClient::PatchedAttachment.new(id: c640b80b-fac9-409f-aa19-1f9221aec445,
                                 remote_id: 11167,
                                 file_name: Candidate Resume,
                                 file_url: http://alturl.com/p749b)
```


