# MergeATSClient::Offer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **application** | **String** | The application being for the offer. | [optional] |
| **creator** | **String** | The user who created the offer. | [optional] |
| **remote_created_at** | **Time** | When the third party&#39;s scorecard was created. | [optional] |
| **closed_at** | **Time** | When the offer was closed. | [optional] |
| **sent_at** | **Time** | When the offer was sent. | [optional] |
| **start_date** | **Time** | The offered start date. | [optional] |
| **status** | [**OfferStatusEnum**](OfferStatusEnum.md) | The offer&#39;s status. | [optional] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::Offer.new(
  id: dd85625c-6a59-446f-a317-6de64d83bae7,
  remote_id: 9876,
  application: 2872ba14-4084-492b-be96-e5eee6fc33ef,
  creator: 52bf9b5e-0beb-4f6f-8a72-cd4dca7ca633,
  remote_created_at: null,
  closed_at: null,
  sent_at: null,
  start_date: null,
  status: SENT
)
```

