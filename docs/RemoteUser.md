# MergeATSClient::RemoteUser

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] [readonly] 
**remote_id** | **String** | The third-party API ID of the matching object. | [optional] 
**first_name** | **String** | The user&#39;s first name. | [optional] 
**last_name** | **String** | The user&#39;s last name. | [optional] 
**email** | **String** | The user&#39;s email. | [optional] 
**disabled** | **Boolean** | Whether the user&#39;s account had been disabled. | [optional] 
**remote_created_at** | **DateTime** | When the third party&#39;s user was created. | [optional] 
**access_role** | [**AccessRoleEnum**](AccessRoleEnum.md) | The user&#39;s role. | [optional] 

## Code Sample

```ruby
require 'MergeATSClient'

instance = MergeATSClient::RemoteUser.new(id: b82302de-852e-4e60-b050-edf9da3b7c02,
                                 remote_id: 344321,
                                 first_name: Dan,
                                 last_name: Rothman,
                                 email: dan@merge.dev,
                                 disabled: null,
                                 remote_created_at: null,
                                 access_role: SUPER_ADMIN)
```


