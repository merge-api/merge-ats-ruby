# MergeATSClient::PatchedScheduledInterview

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] [readonly] 
**remote_id** | **String** | The third-party API ID of the matching object. | [optional] 
**application** | **String** | The application being interviewed. | [optional] 
**organizer** | **String** | The user organizing the interview. | [optional] 
**interviewers** | **Array&lt;String&gt;** |  | [optional] 
**location** | **String** | The interview&#39;s location. | [optional] 
**start_at** | **DateTime** | When the interview was started. | [optional] 
**end_at** | **DateTime** | When the interview was ended. | [optional] 
**remote_created_at** | **DateTime** | When the third party&#39;s interview was created. | [optional] 
**remote_updated_at** | **DateTime** | When the third party&#39;s interview was updated. | [optional] 
**status** | [**ScheduledInterviewStatusEnum**](ScheduledInterviewStatusEnum.md) | The interview&#39;s status. | [optional] 

## Code Sample

```ruby
require 'MergeATSClient'

instance = MergeATSClient::PatchedScheduledInterview.new(id: b8faf072-98b9-4445-8a9a-6b4950efca19,
                                 remote_id: 3,
                                 application: null,
                                 organizer: 52bf9b5e-0beb-4f6f-8a72-cd4dca7ca633,
                                 interviewers: [&quot;f9813dd5-e70b-484c-91d8-00acd6065b07&quot;,&quot;89a86fcf-d540-4e6b-ac3d-ce07c4ec9b3c&quot;],
                                 location: Embarcadero Center 2,
                                 start_at: null,
                                 end_at: null,
                                 remote_created_at: null,
                                 remote_updated_at: null,
                                 status: SCHEDULED)
```


