# MergeATSClient::PatchedActivity

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] [readonly] 
**remote_id** | **String** | The third-party API ID of the matching object. | [optional] 
**user** | **String** | The user the performed the action. | [optional] 
**remote_created_at** | **DateTime** | When the third party&#39;s activity was created. | [optional] 
**activity_type** | [**ActivityTypeEnum**](ActivityTypeEnum.md) | The activity&#39;s type. | [optional] 
**subject** | **String** | The activity&#39;s subject. | [optional] 
**body** | **String** | The activity&#39;s body. | [optional] 
**visibility** | [**VisibilityEnum**](VisibilityEnum.md) | The activity&#39;s visibility. | [optional] 

## Code Sample

```ruby
require 'MergeATSClient'

instance = MergeATSClient::PatchedActivity.new(id: ecbe05ac-62a3-46c5-ab31-4b478b37d1b4,
                                 remote_id: 6,
                                 user: 9d892439-5fab-4dbb-8bd8-34f7f96c7912,
                                 remote_created_at: null,
                                 activity_type: NOTE,
                                 subject: Henry&#39;s applicant status,
                                 body: Candidate will only join if we provide a Barry&#39;s subsidy.,
                                 visibility: PRIVATE)
```


