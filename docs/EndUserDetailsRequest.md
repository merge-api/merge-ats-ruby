# MergeATSClient::EndUserDetailsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **end_user_email_address** | **String** | Your end user&#39;s email address. |  |
| **end_user_organization_name** | **String** | Your end user&#39;s organization. |  |
| **end_user_origin_id** | **String** | Unique ID for your end user. |  |
| **categories** | [**Array&lt;CategoriesEnum&gt;**](CategoriesEnum.md) | The integration categories to show in Merge Link. |  |
| **integration** | **String** | The slug of a specific pre-selected integration for this linking flow token. For examples of slugs, see https://www.merge.dev/docs/basics/integration-metadata/. | [optional] |
| **link_expiry_mins** | **Integer** | An integer number of minutes between [30, 720 or 10080 if for a Magic Link URL] for how long this token is valid. Defaults to 30. | [optional][default to 30] |
| **should_create_magic_link_url** | **Boolean** | Whether to generate a Magic Link URL. Defaults to false. For more information on Magic Link, see https://merge.dev/blog/product/integrations,-fast.-say-hello-to-magic-link/. | [optional][default to false] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::EndUserDetailsRequest.new(
  end_user_email_address: null,
  end_user_organization_name: null,
  end_user_origin_id: null,
  categories: null,
  integration: null,
  link_expiry_mins: null,
  should_create_magic_link_url: null
)
```

