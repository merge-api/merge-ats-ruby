# MergeATSClient::Scorecard

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **application** | **String** | The application being scored. | [optional] |
| **interview** | **String** | The interview being scored. | [optional] |
| **interviewer** | **String** | The interviewer doing the scoring. | [optional] |
| **remote_created_at** | **Time** | When the third party&#39;s scorecard was created. | [optional] |
| **submitted_at** | **Time** | When the scorecard was submitted. | [optional] |
| **overall_recommendation** | [**OverallRecommendationEnum**](OverallRecommendationEnum.md) | The inteviewer&#39;s recommendation.  * &#x60;DEFINITELY_NO&#x60; - DEFINITELY_NO * &#x60;NO&#x60; - NO * &#x60;YES&#x60; - YES * &#x60;STRONG_YES&#x60; - STRONG_YES * &#x60;NO_DECISION&#x60; - NO_DECISION | [optional] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted by third party webhooks. | [optional][readonly] |
| **modified_at** | **Time** | This is the datetime that this object was last updated by Merge | [optional][readonly] |
| **field_mappings** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional][readonly] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::Scorecard.new(
  id: 3eab2f17-eeb1-450d-97f0-029d8be1e06f,
  remote_id: 22234,
  application: 2872ba14-4084-492b-be96-e5eee6fc33ef,
  interview: 52bf9b5e-0beb-4f6f-8a72-cd4dca7ca633,
  interviewer: bbb519a3-246e-4b95-b6b3-dba16107ba6b,
  remote_created_at: 2021-10-15T00:00Z,
  submitted_at: 2021-10-15T00:00Z,
  overall_recommendation: STRONG_YES,
  remote_was_deleted: null,
  modified_at: 2021-10-16T00:00Z,
  field_mappings: {&quot;organization_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;},&quot;linked_account_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;}},
  remote_data: [{&quot;path&quot;:&quot;/ratings&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}]
)
```

