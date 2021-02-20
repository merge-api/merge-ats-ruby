# MergeATSClient::AccountIntegration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Company name. |  |
| **categories** | **String** |  | [optional][readonly] |
| **image** | **String** | Company logo. | [optional] |
| **square_image** | **String** | Company logo in square shape. | [optional] |
| **color** | **String** | The color of this integration used for buttons and text throughout the app and landing pages. Choose a darker, saturated color. | [optional] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::AccountIntegration.new(
  name: null,
  categories: null,
  image: null,
  square_image: null,
  color: null
)
```
