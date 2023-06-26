# MergeATSClient::ActivityRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | **String** | The user that performed the action. | [optional] |
| **activity_type** | [**ActivityTypeEnum**](ActivityTypeEnum.md) | The activity&#39;s type.  * &#x60;NOTE&#x60; - NOTE * &#x60;EMAIL&#x60; - EMAIL * &#x60;OTHER&#x60; - OTHER | [optional] |
| **subject** | **String** | The activity&#39;s subject. | [optional] |
| **body** | **String** | The activity&#39;s body. | [optional] |
| **visibility** | [**VisibilityEnum**](VisibilityEnum.md) | The activity&#39;s visibility.  * &#x60;ADMIN_ONLY&#x60; - ADMIN_ONLY * &#x60;PUBLIC&#x60; - PUBLIC * &#x60;PRIVATE&#x60; - PRIVATE | [optional] |
| **candidate** | **String** | The activity’s candidate. | [optional] |
| **integration_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **linked_account_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::ActivityRequest.new(
  user: 9d892439-5fab-4dbb-8bd8-34f7f96c7912,
  activity_type: NOTE,
  subject: Gil Feig&#39;s interview,
  body: Candidate loves integrations!!.,
  visibility: PRIVATE,
  candidate: 03455bc6-6040-430a-848e-aafacbfdf4fg,
  integration_params: {&quot;unique_integration_field&quot;:&quot;unique_integration_field_value&quot;},
  linked_account_params: {&quot;unique_linked_account_field&quot;:&quot;unique_linked_account_field_value&quot;}
)
```

