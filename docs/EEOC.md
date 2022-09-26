# MergeATSClient::EEOC

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **candidate** | **String** |  | [optional] |
| **submitted_at** | **Time** | When the information was submitted. | [optional] |
| **race** | [**RaceEnum**](RaceEnum.md) | The candidate&#39;s race. | [optional] |
| **gender** | [**GenderEnum**](GenderEnum.md) | The candidate&#39;s gender. | [optional] |
| **veteran_status** | [**VeteranStatusEnum**](VeteranStatusEnum.md) | The candidate&#39;s veteran status. | [optional] |
| **disability_status** | [**DisabilityStatusEnum**](DisabilityStatusEnum.md) | The candidate&#39;s disability status. | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted by third party webhooks. | [optional][readonly] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::EEOC.new(
  id: f7dd7b4f-237e-4772-8bd4-3246384c6c58,
  remote_id: 76,
  candidate: f963f34d-3d2f-4f77-b557-cf36bc7e6498,
  submitted_at: 2021-10-15T00:00Z,
  race: HISPANIC_OR_LATINO,
  gender: FEMALE,
  veteran_status: I_AM_NOT_A_PROTECTED_VETERAN,
  disability_status: I_DONT_WISH_TO_ANSWER,
  remote_data: [{&quot;path&quot;:&quot;/eeoc&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}],
  remote_was_deleted: null
)
```

