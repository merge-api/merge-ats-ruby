# MergeATSClient::Candidate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] [readonly] 
**remote_id** | **String** | The third-party API ID of the matching object. | [optional] 
**first_name** | **String** | The user&#39;s first name. | [optional] 
**last_name** | **String** | The user&#39;s last name. | [optional] 
**company** | **String** | The candidate&#39;s current company. | [optional] 
**title** | **String** | The candidate&#39;s current title. | [optional] 
**remote_created_at** | **DateTime** | When the third party&#39;s candidate was created. | [optional] 
**remote_updated_at** | **DateTime** | When the third party&#39;s candidate was updated. | [optional] 
**last_interaction_at** | **DateTime** | When the most recent candidate interaction occurred. | [optional] 
**is_private** | **Boolean** | Whether or not the candidate is private. | [optional] 
**can_email** | **Boolean** | Whether or not the candidate can be emailed. | [optional] 
**locations** | **Array&lt;String&gt;** |  | [optional] 
**phone_numbers** | [**Array&lt;PhoneNumber&gt;**](PhoneNumber.md) |  | [optional] 
**email_addresses** | [**Array&lt;EmailAddress&gt;**](EmailAddress.md) |  | [optional] 
**urls** | [**Array&lt;Url&gt;**](Url.md) |  | [optional] 
**tags** | **Array&lt;String&gt;** |  | [optional] [readonly] 
**applications** | **Array&lt;String&gt;** |  | [optional] [readonly] 
**attachments** | **Array&lt;String&gt;** |  | [optional] [readonly] 

## Code Sample

```ruby
require 'MergeATSClient'

instance = MergeATSClient::Candidate.new(id: 521b18c2-4d01-4297-b451-19858d07c133,
                                 remote_id: 2,
                                 first_name: Julian,
                                 last_name: Bacon,
                                 company: Skynet Inc.,
                                 title: Artificial Intelligence Engineer,
                                 remote_created_at: null,
                                 remote_updated_at: null,
                                 last_interaction_at: null,
                                 is_private: true,
                                 can_email: true,
                                 locations: [&quot;San Francisco&quot;,&quot;Seattle&quot;],
                                 phone_numbers: [{&quot;value&quot;:&quot;+1234567890&quot;,&quot;phone_number_type&quot;:&quot;MOBILE&quot;}],
                                 email_addresses: [{&quot;value&quot;:&quot;baconator334@hotmail.com&quot;,&quot;email_address_type&quot;:&quot;PERSONAL&quot;}],
                                 urls: [{&quot;value&quot;:&quot;http://alturl.com/p749b&quot;,&quot;url_type&quot;:&quot;BLOG&quot;}],
                                 tags: [&quot;ce4771fb-ebc8-484e-92e4-63dbe39eac2f&quot;],
                                 applications: [&quot;29eb9867-ce2a-403f-b8ce-f2844b89f078&quot;,&quot;b4d08e5c-de00-4d64-a29f-66addac9af99&quot;,&quot;4ff877d2-fb3e-4a5b-a7a5-168ddf2ffa56&quot;],
                                 attachments: [&quot;bea08964-32b4-4a20-8bb4-2612ba09de1d&quot;])
```


