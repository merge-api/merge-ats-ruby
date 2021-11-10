# MergeATSClient::PaginatedIssueList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_next** | **String** |  | [optional] |
| **previous** | **String** |  | [optional] |
| **results** | [**Array&lt;Issue&gt;**](Issue.md) |  | [optional] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::PaginatedIssueList.new(
  _next: cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw,
  previous: cj1sZXdwd2VycWVtY29zZnNkc2NzUWxNMEUxTXk0ME16UXpNallsTWtJ,
  results: null
)
```

