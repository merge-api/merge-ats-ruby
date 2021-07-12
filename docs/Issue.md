# MergeATSClient::Issue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **status** | [**IssueStatusEnum**](IssueStatusEnum.md) |  | [optional] |
| **error_description** | **String** |  |  |
| **end_user** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional][readonly] |
| **first_incident_time** | **Time** |  | [optional] |
| **last_incident_time** | **Time** |  | [optional] |
| **is_muted** | **Boolean** |  | [optional][readonly] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::Issue.new(
  id: null,
  status: null,
  error_description: null,
  end_user: null,
  first_incident_time: null,
  last_incident_time: null,
  is_muted: null
)
```

