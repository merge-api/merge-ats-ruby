# MergeATSClient::ScorecardRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **application** | **String** | The application being scored. | [optional] |
| **interview** | **String** | The interview being scored. | [optional] |
| **interviewer** | **String** | The interviewer doing the scoring. | [optional] |
| **remote_created_at** | **Time** | When the third party&#39;s scorecard was created. | [optional] |
| **submitted_at** | **Time** | When the scorecard was submitted. | [optional] |
| **overall_recommendation** | [**OverallRecommendationEnum**](OverallRecommendationEnum.md) | The inteviewer&#39;s recommendation. | [optional] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::ScorecardRequest.new(
  remote_id: 22234,
  application: 2872ba14-4084-492b-be96-e5eee6fc33ef,
  interview: 52bf9b5e-0beb-4f6f-8a72-cd4dca7ca633,
  interviewer: bbb519a3-246e-4b95-b6b3-dba16107ba6b,
  remote_created_at: null,
  submitted_at: null,
  overall_recommendation: STRONG_YES
)
```

