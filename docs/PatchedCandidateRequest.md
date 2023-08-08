# MergeATSClient::PatchedCandidateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** | The candidate&#39;s first name. | [optional] |
| **last_name** | **String** | The candidate&#39;s last name. | [optional] |
| **company** | **String** | The candidate&#39;s current company. | [optional] |
| **title** | **String** | The candidate&#39;s current title. | [optional] |
| **last_interaction_at** | **Time** | When the most recent interaction with the candidate occurred. | [optional] |
| **is_private** | **Boolean** | Whether or not the candidate is private. | [optional] |
| **can_email** | **Boolean** | Whether or not the candidate can be emailed. | [optional] |
| **locations** | **Array&lt;String&gt;** | The candidate&#39;s locations. | [optional] |
| **phone_numbers** | [**Array&lt;PhoneNumberRequest&gt;**](PhoneNumberRequest.md) |  | [optional] |
| **email_addresses** | [**Array&lt;EmailAddressRequest&gt;**](EmailAddressRequest.md) |  | [optional] |
| **urls** | [**Array&lt;UrlRequest&gt;**](UrlRequest.md) |  | [optional] |
| **tags** | **Array&lt;String&gt;** | Array of &#x60;Tag&#x60; names as strings. | [optional] |
| **applications** | **Array&lt;String&gt;** | Array of &#x60;Application&#x60; object IDs. | [optional] |
| **attachments** | **Array&lt;String&gt;** | Array of &#x60;Attachment&#x60; object IDs. | [optional] |
| **remote_template_id** | **String** |  | [optional] |
| **integration_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **linked_account_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |

## Example

```ruby
require 'merge_ats_client'

instance = MergeATSClient::PatchedCandidateRequest.new(
  first_name: Gil,
  last_name: Feig,
  company: Columbia Dining App.,
  title: Software Engineer,
  last_interaction_at: 2021-10-17T00:00Z,
  is_private: true,
  can_email: true,
  locations: [&quot;San Francisco&quot;,&quot;New York&quot;,&quot;Miami&quot;],
  phone_numbers: [{&quot;value&quot;:&quot;+1234567890&quot;,&quot;phone_number_type&quot;:&quot;MOBILE&quot;}],
  email_addresses: [{&quot;value&quot;:&quot;hello@merge.dev&quot;,&quot;email_address_type&quot;:&quot;PERSONAL&quot;}],
  urls: [{&quot;value&quot;:&quot;http://alturl.com/p749b&quot;,&quot;url_type&quot;:&quot;BLOG&quot;}],
  tags: [&quot;High-Priority&quot;],
  applications: [&quot;29eb9867-ce2a-403f-b8ce-f2844b89f078&quot;,&quot;b4d08e5c-de00-4d64-a29f-66addac9af99&quot;,&quot;4ff877d2-fb3e-4a5b-a7a5-168ddf2ffa56&quot;],
  attachments: [&quot;bea08964-32b4-4a20-8bb4-2612ba09de1d&quot;],
  remote_template_id: 92830948203,
  integration_params: {&quot;unique_integration_field&quot;:&quot;unique_integration_field_value&quot;},
  linked_account_params: {&quot;unique_linked_account_field&quot;:&quot;unique_linked_account_field_value&quot;}
)
```

