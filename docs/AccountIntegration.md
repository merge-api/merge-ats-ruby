# MergeATSClient::AccountIntegration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Company name. |  |
| **categories** | [**Array&lt;CategoriesEnum&gt;**](CategoriesEnum.md) | Category or categories this integration belongs to. Multiple categories should be comma separated, i.e. [ats, hris]. | [optional] |
| **image** | **String** | Company logo in rectangular shape. &lt;b&gt;Upload an image with a clear background.&lt;/b&gt; | [optional] |
| **square_image** | **String** | Company logo in square shape. &lt;b&gt;Upload an image with a white background.&lt;/b&gt; | [optional] |
| **color** | **String** | The color of this integration used for buttons and text throughout the app and landing pages. &lt;b&gt;Choose a darker, saturated color.&lt;/b&gt; | [optional] |
| **slug** | **String** |  | [optional][readonly] |
| **is_in_beta** | **Boolean** | If checked, this integration will not appear in the linking flow, and will appear elsewhere with a Beta tag. | [optional] |
| **api_endpoints_to_documentation_urls** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) | Mapping of API endpoints to documentation urls for support. Example: {&#39;GET&#39;: [[&#39;/common-model-scopes&#39;, &#39;https://docs.merge.dev/accounting/common-model-scopes/#common_model_scopes_retrieve&#39;],[&#39;/common-model-actions&#39;, &#39;https://docs.merge.dev/accounting/common-model-actions/#common_model_actions_retrieve&#39;]], &#39;POST&#39;: []} | [optional] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::AccountIntegration.new(
  name: null,
  categories: null,
  image: null,
  square_image: null,
  color: null,
  slug: null,
  is_in_beta: null,
  api_endpoints_to_documentation_urls: null
)
```

