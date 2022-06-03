# MergeATSClient::EndUserDetailsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **end_user_email_address** | **String** |  |  |
| **end_user_organization_name** | **String** |  |  |
| **end_user_origin_id** | **String** |  |  |
| **categories** | [**Array&lt;CategoriesEnum&gt;**](CategoriesEnum.md) |  |  |
| **integration** | **String** | The slug of a specific pre-selected integration for this linking flow token, for examples of slugs see https://www.merge.dev/docs/basics/integration-metadata | [optional] |
| **link_expiry_mins** | **Integer** | An integer number of minutes between [30, 720] for how long this token is valid. Defaults to 30 | [optional][default to 30] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::EndUserDetailsRequest.new(
  end_user_email_address: null,
  end_user_organization_name: null,
  end_user_origin_id: null,
  categories: null,
  integration: null,
  link_expiry_mins: null
)
```

