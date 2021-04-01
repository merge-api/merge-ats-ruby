# MergeATSClient::EndUserDetailsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **end_user_email_address** | **String** |  |  |
| **end_user_organization_name** | **String** |  |  |
| **end_user_origin_id** | **String** |  |  |
| **categories** | **Array&lt;String&gt;** |  |  |
| **integration** | **String** |  | [optional] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::EndUserDetailsRequest.new(
  end_user_email_address: null,
  end_user_organization_name: null,
  end_user_origin_id: null,
  categories: null,
  integration: null
)
```

