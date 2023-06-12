# MergeATSClient::ScheduledInterview

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **application** | **String** | The application being interviewed. | [optional] |
| **job_interview_stage** | **String** | The stage of the interview. | [optional] |
| **organizer** | **String** | The user organizing the interview. | [optional] |
| **interviewers** | **Array&lt;String&gt;** | Array of &#x60;RemoteUser&#x60; IDs. | [optional] |
| **location** | **String** | The interview&#39;s location. | [optional] |
| **start_at** | **Time** | When the interview was started. | [optional] |
| **end_at** | **Time** | When the interview was ended. | [optional] |
| **remote_created_at** | **Time** | When the third party&#39;s interview was created. | [optional] |
| **remote_updated_at** | **Time** | When the third party&#39;s interview was updated. | [optional] |
| **status** | [**ScheduledInterviewStatusEnum**](ScheduledInterviewStatusEnum.md) | The interview&#39;s status.  * &#x60;SCHEDULED&#x60; - SCHEDULED * &#x60;AWAITING_FEEDBACK&#x60; - AWAITING_FEEDBACK * &#x60;COMPLETE&#x60; - COMPLETE | [optional] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted by third party webhooks. | [optional][readonly] |
| **field_mappings** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional][readonly] |
| **modified_at** | **Time** | This is the datetime that this object was last updated by Merge | [optional][readonly] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::ScheduledInterview.new(
  id: b8faf072-98b9-4445-8a9a-6b4950efca19,
  remote_id: 3,
  application: 92e8a369-fffe-430d-b93a-f7e8a16563f1,
  job_interview_stage: 2f7adb59-3fe6-4b5b-aef6-563f72bd13dc,
  organizer: 52bf9b5e-0beb-4f6f-8a72-cd4dca7ca633,
  interviewers: [&quot;f9813dd5-e70b-484c-91d8-00acd6065b07&quot;,&quot;89a86fcf-d540-4e6b-ac3d-ce07c4ec9b3c&quot;],
  location: Embarcadero Center 2,
  start_at: 2021-10-15T00:00Z,
  end_at: 2021-10-15T02:00Z,
  remote_created_at: 2021-10-15T00:00Z,
  remote_updated_at: 2021-10-15T00:00Z,
  status: SCHEDULED,
  remote_was_deleted: null,
  field_mappings: {&quot;organization_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;},&quot;linked_account_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;}},
  modified_at: 2021-10-16T00:00Z,
  remote_data: [{&quot;path&quot;:&quot;/interviews&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}]
)
```

