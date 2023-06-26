# MergeATSClient::ScheduledInterviewRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **application** | **String** | The application being interviewed. | [optional] |
| **job_interview_stage** | **String** | The stage of the interview. | [optional] |
| **organizer** | **String** | The user organizing the interview. | [optional] |
| **interviewers** | **Array&lt;String&gt;** | Array of &#x60;RemoteUser&#x60; IDs. | [optional] |
| **location** | **String** | The interview&#39;s location. | [optional] |
| **start_at** | **Time** | When the interview was started. | [optional] |
| **end_at** | **Time** | When the interview was ended. | [optional] |
| **status** | [**ScheduledInterviewStatusEnum**](ScheduledInterviewStatusEnum.md) | The interview&#39;s status.  * &#x60;SCHEDULED&#x60; - SCHEDULED * &#x60;AWAITING_FEEDBACK&#x60; - AWAITING_FEEDBACK * &#x60;COMPLETE&#x60; - COMPLETE | [optional] |
| **integration_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **linked_account_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::ScheduledInterviewRequest.new(
  application: 92e8a369-fffe-430d-b93a-f7e8a16563f1,
  job_interview_stage: 2f7adb59-3fe6-4b5b-aef6-563f72bd13dc,
  organizer: 52bf9b5e-0beb-4f6f-8a72-cd4dca7ca633,
  interviewers: [&quot;f9813dd5-e70b-484c-91d8-00acd6065b07&quot;,&quot;89a86fcf-d540-4e6b-ac3d-ce07c4ec9b3c&quot;],
  location: Embarcadero Center 2,
  start_at: 2021-10-15T00:00Z,
  end_at: 2021-10-15T02:00Z,
  status: SCHEDULED,
  integration_params: {&quot;unique_integration_field&quot;:&quot;unique_integration_field_value&quot;},
  linked_account_params: {&quot;unique_linked_account_field&quot;:&quot;unique_linked_account_field_value&quot;}
)
```

