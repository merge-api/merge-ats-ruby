# MergeATSClient::EEOC

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **candidate** | **String** | The candidate being represented. | [optional] |
| **submitted_at** | **Time** | When the information was submitted. | [optional] |
| **race** | [**RaceEnum**](RaceEnum.md) | The candidate&#39;s race.  * &#x60;AMERICAN_INDIAN_OR_ALASKAN_NATIVE&#x60; - AMERICAN_INDIAN_OR_ALASKAN_NATIVE * &#x60;ASIAN&#x60; - ASIAN * &#x60;BLACK_OR_AFRICAN_AMERICAN&#x60; - BLACK_OR_AFRICAN_AMERICAN * &#x60;HISPANIC_OR_LATINO&#x60; - HISPANIC_OR_LATINO * &#x60;WHITE&#x60; - WHITE * &#x60;NATIVE_HAWAIIAN_OR_OTHER_PACIFIC_ISLANDER&#x60; - NATIVE_HAWAIIAN_OR_OTHER_PACIFIC_ISLANDER * &#x60;TWO_OR_MORE_RACES&#x60; - TWO_OR_MORE_RACES * &#x60;DECLINE_TO_SELF_IDENTIFY&#x60; - DECLINE_TO_SELF_IDENTIFY | [optional] |
| **gender** | [**GenderEnum**](GenderEnum.md) | The candidate&#39;s gender.  * &#x60;MALE&#x60; - MALE * &#x60;FEMALE&#x60; - FEMALE * &#x60;NON-BINARY&#x60; - NON-BINARY * &#x60;OTHER&#x60; - OTHER * &#x60;DECLINE_TO_SELF_IDENTIFY&#x60; - DECLINE_TO_SELF_IDENTIFY | [optional] |
| **veteran_status** | [**VeteranStatusEnum**](VeteranStatusEnum.md) | The candidate&#39;s veteran status.  * &#x60;I_AM_NOT_A_PROTECTED_VETERAN&#x60; - I_AM_NOT_A_PROTECTED_VETERAN * &#x60;I_IDENTIFY_AS_ONE_OR_MORE_OF_THE_CLASSIFICATIONS_OF_A_PROTECTED_VETERAN&#x60; - I_IDENTIFY_AS_ONE_OR_MORE_OF_THE_CLASSIFICATIONS_OF_A_PROTECTED_VETERAN * &#x60;I_DONT_WISH_TO_ANSWER&#x60; - I_DONT_WISH_TO_ANSWER | [optional] |
| **disability_status** | [**DisabilityStatusEnum**](DisabilityStatusEnum.md) | The candidate&#39;s disability status.  * &#x60;YES_I_HAVE_A_DISABILITY_OR_PREVIOUSLY_HAD_A_DISABILITY&#x60; - YES_I_HAVE_A_DISABILITY_OR_PREVIOUSLY_HAD_A_DISABILITY * &#x60;NO_I_DONT_HAVE_A_DISABILITY&#x60; - NO_I_DONT_HAVE_A_DISABILITY * &#x60;I_DONT_WISH_TO_ANSWER&#x60; - I_DONT_WISH_TO_ANSWER | [optional] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted by third party webhooks. | [optional][readonly] |
| **modified_at** | **Time** | This is the datetime that this object was last updated by Merge | [optional][readonly] |
| **field_mappings** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional][readonly] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |

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
  remote_was_deleted: null,
  modified_at: 2021-10-16T00:00Z,
  field_mappings: {&quot;organization_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;},&quot;linked_account_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;}},
  remote_data: [{&quot;path&quot;:&quot;/eeoc&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}]
)
```

