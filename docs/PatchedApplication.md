# MergeATSClient::PatchedApplication

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] [readonly] 
**remote_id** | **String** | The third-party API ID of the matching object. | [optional] 
**candidate** | **String** | The candidate applying. | [optional] 
**job** | **String** | The job being applied for. | [optional] 
**is_prospect** | **Boolean** | Whether or not the application is a prospect. | [optional] 
**applied_at** | **DateTime** | When the application was submitted. | [optional] 
**rejected_at** | **DateTime** | When the application was rejected. | [optional] 
**source** | [**SourceEnum**](SourceEnum.md) | The application&#39;s source. | [optional] 
**credited_to** | **String** | The user credited. | [optional] 
**current_stage** | **String** | The application&#39;s current stage. | [optional] 
**reject_reason** | **String** | The applications reason for rejection. | [optional] 

## Code Sample

```ruby
require 'MergeATSClient'

instance = MergeATSClient::PatchedApplication.new(id: 92e8a369-fffe-430d-b93a-f7e8a16563f1,
                                 remote_id: 6,
                                 candidate: 2872ba14-4084-492b-be96-e5eee6fc33ef,
                                 job: 52bf9b5e-0beb-4f6f-8a72-cd4dca7ca633,
                                 is_prospect: null,
                                 applied_at: null,
                                 rejected_at: null,
                                 source: REFERRED,
                                 credited_to: 58166795-8d68-4b30-9bfb-bfd402479484,
                                 current_stage: d578dfdc-7b0a-4ab6-a2b0-4b40f20eb9ea,
                                 reject_reason: 59b25f2b-da02-40f5-9656-9fa0db555784)
```


