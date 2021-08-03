# merge_ats_client

MergeATSClient - the Ruby gem for the Merge ATS API

The unified API for building rich integrations with multiple Applicant Tracking System platforms.

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen
For more information, please visit [https://www.merge.dev/](https://www.merge.dev/)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build merge_ats_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./merge_ats_client-1.0.0.gem
```

(for development, run `gem install --dev ./merge_ats_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'merge_ats_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/merge-api/merge-ats-ruby, then add the following in the Gemfile:

    gem 'merge_ats_client', :git => 'https://github.com/merge-api/merge-ats-ruby.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'merge_ats_client'

# Setup authorization
MergeATSClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = MergeATSClient::AccountTokenApi.new
public_token = 'public_token_example' # String | 

begin
  result = api_instance.account_token_retrieve(public_token)
  p result
rescue MergeATSClient::ApiError => e
  puts "Exception when calling AccountTokenApi->account_token_retrieve: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.merge.dev/api/ats/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*MergeATSClient::AccountTokenApi* | [**account_token_retrieve**](docs/AccountTokenApi.md#account_token_retrieve) | **GET** /account-token/{public_token} | 
*MergeATSClient::ActivitiesApi* | [**activities_list**](docs/ActivitiesApi.md#activities_list) | **GET** /activities | 
*MergeATSClient::ActivitiesApi* | [**activities_retrieve**](docs/ActivitiesApi.md#activities_retrieve) | **GET** /activities/{id} | 
*MergeATSClient::ApplicationsApi* | [**applications_create**](docs/ApplicationsApi.md#applications_create) | **POST** /applications | 
*MergeATSClient::ApplicationsApi* | [**applications_list**](docs/ApplicationsApi.md#applications_list) | **GET** /applications | 
*MergeATSClient::ApplicationsApi* | [**applications_retrieve**](docs/ApplicationsApi.md#applications_retrieve) | **GET** /applications/{id} | 
*MergeATSClient::AttachmentsApi* | [**attachments_create**](docs/AttachmentsApi.md#attachments_create) | **POST** /attachments | 
*MergeATSClient::AttachmentsApi* | [**attachments_list**](docs/AttachmentsApi.md#attachments_list) | **GET** /attachments | 
*MergeATSClient::AttachmentsApi* | [**attachments_retrieve**](docs/AttachmentsApi.md#attachments_retrieve) | **GET** /attachments/{id} | 
*MergeATSClient::AvailableActionsApi* | [**available_actions_retrieve**](docs/AvailableActionsApi.md#available_actions_retrieve) | **GET** /available-actions | 
*MergeATSClient::CandidatesApi* | [**candidates_create**](docs/CandidatesApi.md#candidates_create) | **POST** /candidates | 
*MergeATSClient::CandidatesApi* | [**candidates_list**](docs/CandidatesApi.md#candidates_list) | **GET** /candidates | 
*MergeATSClient::CandidatesApi* | [**candidates_retrieve**](docs/CandidatesApi.md#candidates_retrieve) | **GET** /candidates/{id} | 
*MergeATSClient::DeleteAccountApi* | [**delete_account_create**](docs/DeleteAccountApi.md#delete_account_create) | **POST** /delete-account | 
*MergeATSClient::DepartmentsApi* | [**departments_list**](docs/DepartmentsApi.md#departments_list) | **GET** /departments | 
*MergeATSClient::DepartmentsApi* | [**departments_retrieve**](docs/DepartmentsApi.md#departments_retrieve) | **GET** /departments/{id} | 
*MergeATSClient::EeocsApi* | [**eeocs_list**](docs/EeocsApi.md#eeocs_list) | **GET** /eeocs | 
*MergeATSClient::EeocsApi* | [**eeocs_retrieve**](docs/EeocsApi.md#eeocs_retrieve) | **GET** /eeocs/{id} | 
*MergeATSClient::GenerateKeyApi* | [**generate_key_create**](docs/GenerateKeyApi.md#generate_key_create) | **POST** /generate-key | 
*MergeATSClient::InterviewsApi* | [**interviews_create**](docs/InterviewsApi.md#interviews_create) | **POST** /interviews | 
*MergeATSClient::InterviewsApi* | [**interviews_list**](docs/InterviewsApi.md#interviews_list) | **GET** /interviews | 
*MergeATSClient::InterviewsApi* | [**interviews_retrieve**](docs/InterviewsApi.md#interviews_retrieve) | **GET** /interviews/{id} | 
*MergeATSClient::IssuesApi* | [**issues_list**](docs/IssuesApi.md#issues_list) | **GET** /issues | 
*MergeATSClient::IssuesApi* | [**issues_retrieve**](docs/IssuesApi.md#issues_retrieve) | **GET** /issues/{id} | 
*MergeATSClient::JobInterviewStagesApi* | [**job_interview_stages_list**](docs/JobInterviewStagesApi.md#job_interview_stages_list) | **GET** /job-interview-stages | 
*MergeATSClient::JobInterviewStagesApi* | [**job_interview_stages_retrieve**](docs/JobInterviewStagesApi.md#job_interview_stages_retrieve) | **GET** /job-interview-stages/{id} | 
*MergeATSClient::JobsApi* | [**jobs_list**](docs/JobsApi.md#jobs_list) | **GET** /jobs | 
*MergeATSClient::JobsApi* | [**jobs_retrieve**](docs/JobsApi.md#jobs_retrieve) | **GET** /jobs/{id} | 
*MergeATSClient::LinkTokenApi* | [**link_token_create**](docs/LinkTokenApi.md#link_token_create) | **POST** /link-token | 
*MergeATSClient::OffersApi* | [**offers_list**](docs/OffersApi.md#offers_list) | **GET** /offers | 
*MergeATSClient::OffersApi* | [**offers_retrieve**](docs/OffersApi.md#offers_retrieve) | **GET** /offers/{id} | 
*MergeATSClient::OfficesApi* | [**offices_list**](docs/OfficesApi.md#offices_list) | **GET** /offices | 
*MergeATSClient::OfficesApi* | [**offices_retrieve**](docs/OfficesApi.md#offices_retrieve) | **GET** /offices/{id} | 
*MergeATSClient::PassthroughApi* | [**passthrough_create**](docs/PassthroughApi.md#passthrough_create) | **POST** /passthrough | 
*MergeATSClient::RegenerateKeyApi* | [**regenerate_key_create**](docs/RegenerateKeyApi.md#regenerate_key_create) | **POST** /regenerate-key | 
*MergeATSClient::RejectReasonsApi* | [**reject_reasons_list**](docs/RejectReasonsApi.md#reject_reasons_list) | **GET** /reject-reasons | 
*MergeATSClient::RejectReasonsApi* | [**reject_reasons_retrieve**](docs/RejectReasonsApi.md#reject_reasons_retrieve) | **GET** /reject-reasons/{id} | 
*MergeATSClient::ScorecardsApi* | [**scorecards_create**](docs/ScorecardsApi.md#scorecards_create) | **POST** /scorecards | 
*MergeATSClient::ScorecardsApi* | [**scorecards_list**](docs/ScorecardsApi.md#scorecards_list) | **GET** /scorecards | 
*MergeATSClient::ScorecardsApi* | [**scorecards_retrieve**](docs/ScorecardsApi.md#scorecards_retrieve) | **GET** /scorecards/{id} | 
*MergeATSClient::SyncStatusApi* | [**sync_status_list**](docs/SyncStatusApi.md#sync_status_list) | **GET** /sync-status | 
*MergeATSClient::SyncStatusApi* | [**sync_status_resync_create**](docs/SyncStatusApi.md#sync_status_resync_create) | **POST** /sync-status/resync | 
*MergeATSClient::TagsApi* | [**tags_list**](docs/TagsApi.md#tags_list) | **GET** /tags | 
*MergeATSClient::UsersApi* | [**users_create**](docs/UsersApi.md#users_create) | **POST** /users | 
*MergeATSClient::UsersApi* | [**users_list**](docs/UsersApi.md#users_list) | **GET** /users | 
*MergeATSClient::UsersApi* | [**users_retrieve**](docs/UsersApi.md#users_retrieve) | **GET** /users/{id} | 


## Documentation for Models

 - [MergeATSClient::AccessRoleEnum](docs/AccessRoleEnum.md)
 - [MergeATSClient::AccountIntegration](docs/AccountIntegration.md)
 - [MergeATSClient::AccountToken](docs/AccountToken.md)
 - [MergeATSClient::Activity](docs/Activity.md)
 - [MergeATSClient::ActivityTypeEnum](docs/ActivityTypeEnum.md)
 - [MergeATSClient::Application](docs/Application.md)
 - [MergeATSClient::ApplicationRequest](docs/ApplicationRequest.md)
 - [MergeATSClient::Attachment](docs/Attachment.md)
 - [MergeATSClient::AttachmentRequest](docs/AttachmentRequest.md)
 - [MergeATSClient::AttachmentTypeEnum](docs/AttachmentTypeEnum.md)
 - [MergeATSClient::AvailableActions](docs/AvailableActions.md)
 - [MergeATSClient::Candidate](docs/Candidate.md)
 - [MergeATSClient::CandidateRequest](docs/CandidateRequest.md)
 - [MergeATSClient::DataPassthroughRequest](docs/DataPassthroughRequest.md)
 - [MergeATSClient::Department](docs/Department.md)
 - [MergeATSClient::DisabilityStatusEnum](docs/DisabilityStatusEnum.md)
 - [MergeATSClient::EEOC](docs/EEOC.md)
 - [MergeATSClient::EmailAddress](docs/EmailAddress.md)
 - [MergeATSClient::EmailAddressRequest](docs/EmailAddressRequest.md)
 - [MergeATSClient::EmailAddressTypeEnum](docs/EmailAddressTypeEnum.md)
 - [MergeATSClient::EndUserDetailsRequest](docs/EndUserDetailsRequest.md)
 - [MergeATSClient::GenderEnum](docs/GenderEnum.md)
 - [MergeATSClient::GenerateRemoteKeyRequest](docs/GenerateRemoteKeyRequest.md)
 - [MergeATSClient::Issue](docs/Issue.md)
 - [MergeATSClient::IssueStatusEnum](docs/IssueStatusEnum.md)
 - [MergeATSClient::Job](docs/Job.md)
 - [MergeATSClient::JobInterviewStage](docs/JobInterviewStage.md)
 - [MergeATSClient::JobStatusEnum](docs/JobStatusEnum.md)
 - [MergeATSClient::LinkToken](docs/LinkToken.md)
 - [MergeATSClient::MethodEnum](docs/MethodEnum.md)
 - [MergeATSClient::ModelOperation](docs/ModelOperation.md)
 - [MergeATSClient::Offer](docs/Offer.md)
 - [MergeATSClient::OfferStatusEnum](docs/OfferStatusEnum.md)
 - [MergeATSClient::Office](docs/Office.md)
 - [MergeATSClient::OverallRecommendationEnum](docs/OverallRecommendationEnum.md)
 - [MergeATSClient::PaginatedActivityList](docs/PaginatedActivityList.md)
 - [MergeATSClient::PaginatedApplicationList](docs/PaginatedApplicationList.md)
 - [MergeATSClient::PaginatedAttachmentList](docs/PaginatedAttachmentList.md)
 - [MergeATSClient::PaginatedCandidateList](docs/PaginatedCandidateList.md)
 - [MergeATSClient::PaginatedDepartmentList](docs/PaginatedDepartmentList.md)
 - [MergeATSClient::PaginatedEEOCList](docs/PaginatedEEOCList.md)
 - [MergeATSClient::PaginatedIssueList](docs/PaginatedIssueList.md)
 - [MergeATSClient::PaginatedJobInterviewStageList](docs/PaginatedJobInterviewStageList.md)
 - [MergeATSClient::PaginatedJobList](docs/PaginatedJobList.md)
 - [MergeATSClient::PaginatedOfferList](docs/PaginatedOfferList.md)
 - [MergeATSClient::PaginatedOfficeList](docs/PaginatedOfficeList.md)
 - [MergeATSClient::PaginatedRejectReasonList](docs/PaginatedRejectReasonList.md)
 - [MergeATSClient::PaginatedRemoteUserList](docs/PaginatedRemoteUserList.md)
 - [MergeATSClient::PaginatedScheduledInterviewList](docs/PaginatedScheduledInterviewList.md)
 - [MergeATSClient::PaginatedScorecardList](docs/PaginatedScorecardList.md)
 - [MergeATSClient::PaginatedSyncStatusList](docs/PaginatedSyncStatusList.md)
 - [MergeATSClient::PaginatedTagList](docs/PaginatedTagList.md)
 - [MergeATSClient::PhoneNumber](docs/PhoneNumber.md)
 - [MergeATSClient::PhoneNumberRequest](docs/PhoneNumberRequest.md)
 - [MergeATSClient::PhoneNumberTypeEnum](docs/PhoneNumberTypeEnum.md)
 - [MergeATSClient::RaceEnum](docs/RaceEnum.md)
 - [MergeATSClient::RejectReason](docs/RejectReason.md)
 - [MergeATSClient::RemoteData](docs/RemoteData.md)
 - [MergeATSClient::RemoteDataRequest](docs/RemoteDataRequest.md)
 - [MergeATSClient::RemoteKey](docs/RemoteKey.md)
 - [MergeATSClient::RemoteKeyForRegenerationRequest](docs/RemoteKeyForRegenerationRequest.md)
 - [MergeATSClient::RemoteResponse](docs/RemoteResponse.md)
 - [MergeATSClient::RemoteUser](docs/RemoteUser.md)
 - [MergeATSClient::RemoteUserRequest](docs/RemoteUserRequest.md)
 - [MergeATSClient::ScheduledInterview](docs/ScheduledInterview.md)
 - [MergeATSClient::ScheduledInterviewRequest](docs/ScheduledInterviewRequest.md)
 - [MergeATSClient::ScheduledInterviewStatusEnum](docs/ScheduledInterviewStatusEnum.md)
 - [MergeATSClient::Scorecard](docs/Scorecard.md)
 - [MergeATSClient::ScorecardRequest](docs/ScorecardRequest.md)
 - [MergeATSClient::SyncStatus](docs/SyncStatus.md)
 - [MergeATSClient::SyncStatusStatusEnum](docs/SyncStatusStatusEnum.md)
 - [MergeATSClient::Tag](docs/Tag.md)
 - [MergeATSClient::Url](docs/Url.md)
 - [MergeATSClient::UrlRequest](docs/UrlRequest.md)
 - [MergeATSClient::UrlTypeEnum](docs/UrlTypeEnum.md)
 - [MergeATSClient::VeteranStatusEnum](docs/VeteranStatusEnum.md)
 - [MergeATSClient::VisibilityEnum](docs/VisibilityEnum.md)


## Documentation for Authorization


### tokenAuth


- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

