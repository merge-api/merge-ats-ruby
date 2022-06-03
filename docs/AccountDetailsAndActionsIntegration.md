# MergeATSClient::AccountDetailsAndActionsIntegration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **categories** | [**Array&lt;CategoriesEnum&gt;**](CategoriesEnum.md) |  |  |
| **image** | **String** |  | [optional] |
| **square_image** | **String** |  | [optional] |
| **color** | **String** |  |  |
| **slug** | **String** |  |  |
| **passthrough_available** | **Boolean** |  |  |
| **available_model_operations** | [**Array&lt;ModelOperation&gt;**](ModelOperation.md) |  | [optional] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::AccountDetailsAndActionsIntegration.new(
  name: null,
  categories: null,
  image: null,
  square_image: null,
  color: null,
  slug: null,
  passthrough_available: null,
  available_model_operations: null
)
```

