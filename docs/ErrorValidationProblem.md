# MergeATSClient::ErrorValidationProblem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source** | [**ValidationProblemSource**](ValidationProblemSource.md) |  | [optional] |
| **title** | **String** |  |  |
| **detail** | **String** |  |  |
| **problem_type** | **String** |  |  |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::ErrorValidationProblem.new(
  source: null,
  title: Missing Required Field,
  detail: custom_fields is a required field on model.,
  problem_type: MISSING_REQUIRED_FIELD
)
```

