# MergeATSClient::WarningValidationProblem

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

instance = MergeATSClient::WarningValidationProblem.new(
  source: null,
  title: Unrecognized Field,
  detail: An unrecognized field, age, was passed in with request data.,
  problem_type: UNRECOGNIZED_FIELD
)
```

