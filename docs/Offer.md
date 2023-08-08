# MergeATSClient::Offer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **application** | **String** | The application who is receiving the offer. | [optional] |
| **creator** | **String** | The user who created the offer. | [optional] |
| **remote_created_at** | **Time** | When the third party&#39;s offer was created. | [optional] |
| **closed_at** | **Time** | When the offer was closed. | [optional] |
| **sent_at** | **Time** | When the offer was sent. | [optional] |
| **start_date** | **Time** | The employment start date on the offer. | [optional] |
| **status** | [**OfferStatusEnum**](OfferStatusEnum.md) | The offer&#39;s status.  * &#x60;DRAFT&#x60; - DRAFT * &#x60;APPROVAL-SENT&#x60; - APPROVAL-SENT * &#x60;APPROVED&#x60; - APPROVED * &#x60;SENT&#x60; - SENT * &#x60;SENT-MANUALLY&#x60; - SENT-MANUALLY * &#x60;OPENED&#x60; - OPENED * &#x60;DENIED&#x60; - DENIED * &#x60;SIGNED&#x60; - SIGNED * &#x60;DEPRECATED&#x60; - DEPRECATED | [optional] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted by third party webhooks. | [optional][readonly] |
| **modified_at** | **Time** | This is the datetime that this object was last updated by Merge | [optional][readonly] |
| **field_mappings** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional][readonly] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::Offer.new(
  id: dd85625c-6a59-446f-a317-6de64d83bae7,
  remote_id: 9876,
  application: 2872ba14-4084-492b-be96-e5eee6fc33ef,
  creator: 52bf9b5e-0beb-4f6f-8a72-cd4dca7ca633,
  remote_created_at: 2021-10-15T00:00Z,
  closed_at: 2021-10-16T00:00Z,
  sent_at: 2021-10-15T00:00Z,
  start_date: 2021-11-15T00:00Z,
  status: SENT,
  remote_was_deleted: null,
  modified_at: 2021-10-16T00:00Z,
  field_mappings: {&quot;organization_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;},&quot;linked_account_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;}},
  remote_data: [{&quot;path&quot;:&quot;/offers&quot;,&quot;data&quot;:[&quot;Varies by platform&quot;]}]
)
```

