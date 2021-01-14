# MergeATSClient::PatchedEEOC

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] [readonly] 
**remote_id** | **String** | The third-party API ID of the matching object. | [optional] 
**candidate** | **String** | The candidate being represented. | [optional] 
**submitted_at** | **DateTime** | When the information was submitted. | [optional] 
**race** | [**RaceEnum**](RaceEnum.md) | The candidate&#39;s race. | [optional] 
**gender** | [**GenderEnum**](GenderEnum.md) | The candidate&#39;s gender. | [optional] 
**veteran_status** | [**VeteranStatusEnum**](VeteranStatusEnum.md) | The candidate&#39;s veteran status. | [optional] 
**disability_status** | [**DisabilityStatusEnum**](DisabilityStatusEnum.md) | The candidate&#39;s disability status. | [optional] 

## Code Sample

```ruby
require 'MergeATSClient'

instance = MergeATSClient::PatchedEEOC.new(id: f7dd7b4f-237e-4772-8bd4-3246384c6c58,
                                 remote_id: 76,
                                 candidate: f963f34d-3d2f-4f77-b557-cf36bc7e6498,
                                 submitted_at: null,
                                 race: HISPANIC_OR_LATINO,
                                 gender: FEMALE,
                                 veteran_status: I_AM_NOT_A_PROTECTED_VETERAN,
                                 disability_status: I_DONT_WISH_TO_ANSWER)
```


