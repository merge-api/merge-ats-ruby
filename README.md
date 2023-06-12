# merge_ats_client

MergeATSClient - the Ruby gem for the Merge ATS API

The unified API for building rich integrations with multiple Applicant Tracking System platforms.

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0
- Package version: 3.0.1
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
gem install ./merge_ats_client-3.0.1.gem
```

(for development, run `gem install --dev ./merge_ats_client-3.0.1.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'merge_ats_client', '~> 3.0.1'

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
  config.api_key['tokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['tokenAuth'] = 'Bearer'
end

api_instance = MergeATSClient::AccountDetailsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.

begin
  result = api_instance.account_details_retrieve(x_account_token)
  p result
rescue MergeATSClient::ApiError => e
  puts "Exception when calling AccountDetailsApi->account_details_retrieve: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.merge.dev/api/ats/v1*

| Class                                   | Method                                                                                                    | HTTP request                             | Description |
| --------------------------------------- | --------------------------------------------------------------------------------------------------------- | ---------------------------------------- | ----------- |
| _MergeATSClient::AccountDetailsApi_     | [**account_details_retrieve**](docs/AccountDetailsApi.md#account_details_retrieve)                        | **GET** /account-details                 |
| _MergeATSClient::AccountTokenApi_       | [**account_token_retrieve**](docs/AccountTokenApi.md#account_token_retrieve)                              | **GET** /account-token/{public_token}    |
| _MergeATSClient::ActivitiesApi_         | [**activities_create**](docs/ActivitiesApi.md#activities_create)                                          | **POST** /activities                     |
| _MergeATSClient::ActivitiesApi_         | [**activities_list**](docs/ActivitiesApi.md#activities_list)                                              | **GET** /activities                      |
| _MergeATSClient::ActivitiesApi_         | [**activities_meta_post_retrieve**](docs/ActivitiesApi.md#activities_meta_post_retrieve)                  | **GET** /activities/meta/post            |
| _MergeATSClient::ActivitiesApi_         | [**activities_retrieve**](docs/ActivitiesApi.md#activities_retrieve)                                      | **GET** /activities/{id}                 |
| _MergeATSClient::ApplicationsApi_       | [**applications_change_stage_create**](docs/ApplicationsApi.md#applications_change_stage_create)          | **POST** /applications/{id}/change-stage |
| _MergeATSClient::ApplicationsApi_       | [**applications_create**](docs/ApplicationsApi.md#applications_create)                                    | **POST** /applications                   |
| _MergeATSClient::ApplicationsApi_       | [**applications_list**](docs/ApplicationsApi.md#applications_list)                                        | **GET** /applications                    |
| _MergeATSClient::ApplicationsApi_       | [**applications_meta_post_retrieve**](docs/ApplicationsApi.md#applications_meta_post_retrieve)            | **GET** /applications/meta/post          |
| _MergeATSClient::ApplicationsApi_       | [**applications_retrieve**](docs/ApplicationsApi.md#applications_retrieve)                                | **GET** /applications/{id}               |
| _MergeATSClient::AttachmentsApi_        | [**attachments_create**](docs/AttachmentsApi.md#attachments_create)                                       | **POST** /attachments                    |
| _MergeATSClient::AttachmentsApi_        | [**attachments_list**](docs/AttachmentsApi.md#attachments_list)                                           | **GET** /attachments                     |
| _MergeATSClient::AttachmentsApi_        | [**attachments_meta_post_retrieve**](docs/AttachmentsApi.md#attachments_meta_post_retrieve)               | **GET** /attachments/meta/post           |
| _MergeATSClient::AttachmentsApi_        | [**attachments_retrieve**](docs/AttachmentsApi.md#attachments_retrieve)                                   | **GET** /attachments/{id}                |
| _MergeATSClient::AvailableActionsApi_   | [**available_actions_retrieve**](docs/AvailableActionsApi.md#available_actions_retrieve)                  | **GET** /available-actions               |
| _MergeATSClient::CandidatesApi_         | [**candidates_create**](docs/CandidatesApi.md#candidates_create)                                          | **POST** /candidates                     |
| _MergeATSClient::CandidatesApi_         | [**candidates_ignore_create**](docs/CandidatesApi.md#candidates_ignore_create)                            | **POST** /candidates/ignore/{model_id}   |
| _MergeATSClient::CandidatesApi_         | [**candidates_list**](docs/CandidatesApi.md#candidates_list)                                              | **GET** /candidates                      |
| _MergeATSClient::CandidatesApi_         | [**candidates_meta_post_retrieve**](docs/CandidatesApi.md#candidates_meta_post_retrieve)                  | **GET** /candidates/meta/post            |
| _MergeATSClient::CandidatesApi_         | [**candidates_retrieve**](docs/CandidatesApi.md#candidates_retrieve)                                      | **GET** /candidates/{id}                 |
| _MergeATSClient::DeleteAccountApi_      | [**delete_account_create**](docs/DeleteAccountApi.md#delete_account_create)                               | **POST** /delete-account                 |
| _MergeATSClient::DepartmentsApi_        | [**departments_list**](docs/DepartmentsApi.md#departments_list)                                           | **GET** /departments                     |
| _MergeATSClient::DepartmentsApi_        | [**departments_retrieve**](docs/DepartmentsApi.md#departments_retrieve)                                   | **GET** /departments/{id}                |
| _MergeATSClient::EeocsApi_              | [**eeocs_list**](docs/EeocsApi.md#eeocs_list)                                                             | **GET** /eeocs                           |
| _MergeATSClient::EeocsApi_              | [**eeocs_retrieve**](docs/EeocsApi.md#eeocs_retrieve)                                                     | **GET** /eeocs/{id}                      |
| _MergeATSClient::ForceResyncApi_        | [**sync_status_resync_create**](docs/ForceResyncApi.md#sync_status_resync_create)                         | **POST** /sync-status/resync             |
| _MergeATSClient::GenerateKeyApi_        | [**generate_key_create**](docs/GenerateKeyApi.md#generate_key_create)                                     | **POST** /generate-key                   |
| _MergeATSClient::InterviewsApi_         | [**interviews_create**](docs/InterviewsApi.md#interviews_create)                                          | **POST** /interviews                     |
| _MergeATSClient::InterviewsApi_         | [**interviews_list**](docs/InterviewsApi.md#interviews_list)                                              | **GET** /interviews                      |
| _MergeATSClient::InterviewsApi_         | [**interviews_meta_post_retrieve**](docs/InterviewsApi.md#interviews_meta_post_retrieve)                  | **GET** /interviews/meta/post            |
| _MergeATSClient::InterviewsApi_         | [**interviews_retrieve**](docs/InterviewsApi.md#interviews_retrieve)                                      | **GET** /interviews/{id}                 |
| _MergeATSClient::IssuesApi_             | [**issues_list**](docs/IssuesApi.md#issues_list)                                                          | **GET** /issues                          |
| _MergeATSClient::IssuesApi_             | [**issues_retrieve**](docs/IssuesApi.md#issues_retrieve)                                                  | **GET** /issues/{id}                     |
| _MergeATSClient::JobInterviewStagesApi_ | [**job_interview_stages_list**](docs/JobInterviewStagesApi.md#job_interview_stages_list)                  | **GET** /job-interview-stages            |
| _MergeATSClient::JobInterviewStagesApi_ | [**job_interview_stages_retrieve**](docs/JobInterviewStagesApi.md#job_interview_stages_retrieve)          | **GET** /job-interview-stages/{id}       |
| _MergeATSClient::JobsApi_               | [**jobs_list**](docs/JobsApi.md#jobs_list)                                                                | **GET** /jobs                            |
| _MergeATSClient::JobsApi_               | [**jobs_retrieve**](docs/JobsApi.md#jobs_retrieve)                                                        | **GET** /jobs/{id}                       |
| _MergeATSClient::LinkTokenApi_          | [**link_token_create**](docs/LinkTokenApi.md#link_token_create)                                           | **POST** /link-token                     |
| _MergeATSClient::LinkedAccountsApi_     | [**linked_accounts_list**](docs/LinkedAccountsApi.md#linked_accounts_list)                                | **GET** /linked-accounts                 |
| _MergeATSClient::OffersApi_             | [**offers_list**](docs/OffersApi.md#offers_list)                                                          | **GET** /offers                          |
| _MergeATSClient::OffersApi_             | [**offers_retrieve**](docs/OffersApi.md#offers_retrieve)                                                  | **GET** /offers/{id}                     |
| _MergeATSClient::OfficesApi_            | [**offices_list**](docs/OfficesApi.md#offices_list)                                                       | **GET** /offices                         |
| _MergeATSClient::OfficesApi_            | [**offices_retrieve**](docs/OfficesApi.md#offices_retrieve)                                               | **GET** /offices/{id}                    |
| _MergeATSClient::PassthroughApi_        | [**passthrough_create**](docs/PassthroughApi.md#passthrough_create)                                       | **POST** /passthrough                    |
| _MergeATSClient::RegenerateKeyApi_      | [**regenerate_key_create**](docs/RegenerateKeyApi.md#regenerate_key_create)                               | **POST** /regenerate-key                 |
| _MergeATSClient::RejectReasonsApi_      | [**reject_reasons_list**](docs/RejectReasonsApi.md#reject_reasons_list)                                   | **GET** /reject-reasons                  |
| _MergeATSClient::RejectReasonsApi_      | [**reject_reasons_retrieve**](docs/RejectReasonsApi.md#reject_reasons_retrieve)                           | **GET** /reject-reasons/{id}             |
| _MergeATSClient::ScorecardsApi_         | [**scorecards_list**](docs/ScorecardsApi.md#scorecards_list)                                              | **GET** /scorecards                      |
| _MergeATSClient::ScorecardsApi_         | [**scorecards_retrieve**](docs/ScorecardsApi.md#scorecards_retrieve)                                      | **GET** /scorecards/{id}                 |
| _MergeATSClient::SelectiveSyncApi_      | [**selective_sync_configurations_list**](docs/SelectiveSyncApi.md#selective_sync_configurations_list)     | **GET** /selective-sync/configurations   |
| _MergeATSClient::SelectiveSyncApi_      | [**selective_sync_configurations_update**](docs/SelectiveSyncApi.md#selective_sync_configurations_update) | **PUT** /selective-sync/configurations   |
| _MergeATSClient::SelectiveSyncApi_      | [**selective_sync_meta_list**](docs/SelectiveSyncApi.md#selective_sync_meta_list)                         | **GET** /selective-sync/meta             |
| _MergeATSClient::SyncStatusApi_         | [**sync_status_list**](docs/SyncStatusApi.md#sync_status_list)                                            | **GET** /sync-status                     |
| _MergeATSClient::TagsApi_               | [**tags_list**](docs/TagsApi.md#tags_list)                                                                | **GET** /tags                            |
| _MergeATSClient::UsersApi_              | [**users_list**](docs/UsersApi.md#users_list)                                                             | **GET** /users                           |
| _MergeATSClient::UsersApi_              | [**users_retrieve**](docs/UsersApi.md#users_retrieve)                                                     | **GET** /users/{id}                      |
| _MergeATSClient::WebhookReceiversApi_   | [**webhook_receivers_create**](docs/WebhookReceiversApi.md#webhook_receivers_create)                      | **POST** /webhook-receivers              |
| _MergeATSClient::WebhookReceiversApi_   | [**webhook_receivers_list**](docs/WebhookReceiversApi.md#webhook_receivers_list)                          | **GET** /webhook-receivers               |

## Documentation for Models

- [MergeATSClient::AccessRoleEnum](docs/AccessRoleEnum.md)
- [MergeATSClient::AccountDetails](docs/AccountDetails.md)
- [MergeATSClient::AccountDetailsAndActions](docs/AccountDetailsAndActions.md)
- [MergeATSClient::AccountDetailsAndActionsIntegration](docs/AccountDetailsAndActionsIntegration.md)
- [MergeATSClient::AccountDetailsAndActionsStatusEnum](docs/AccountDetailsAndActionsStatusEnum.md)
- [MergeATSClient::AccountIntegration](docs/AccountIntegration.md)
- [MergeATSClient::AccountToken](docs/AccountToken.md)
- [MergeATSClient::Activity](docs/Activity.md)
- [MergeATSClient::ActivityEndpointRequest](docs/ActivityEndpointRequest.md)
- [MergeATSClient::ActivityRequest](docs/ActivityRequest.md)
- [MergeATSClient::ActivityResponse](docs/ActivityResponse.md)
- [MergeATSClient::ActivityTypeEnum](docs/ActivityTypeEnum.md)
- [MergeATSClient::Application](docs/Application.md)
- [MergeATSClient::ApplicationEndpointRequest](docs/ApplicationEndpointRequest.md)
- [MergeATSClient::ApplicationRequest](docs/ApplicationRequest.md)
- [MergeATSClient::ApplicationResponse](docs/ApplicationResponse.md)
- [MergeATSClient::Attachment](docs/Attachment.md)
- [MergeATSClient::AttachmentEndpointRequest](docs/AttachmentEndpointRequest.md)
- [MergeATSClient::AttachmentRequest](docs/AttachmentRequest.md)
- [MergeATSClient::AttachmentResponse](docs/AttachmentResponse.md)
- [MergeATSClient::AttachmentTypeEnum](docs/AttachmentTypeEnum.md)
- [MergeATSClient::AvailableActions](docs/AvailableActions.md)
- [MergeATSClient::Candidate](docs/Candidate.md)
- [MergeATSClient::CandidateEndpointRequest](docs/CandidateEndpointRequest.md)
- [MergeATSClient::CandidateRequest](docs/CandidateRequest.md)
- [MergeATSClient::CandidateResponse](docs/CandidateResponse.md)
- [MergeATSClient::CategoriesEnum](docs/CategoriesEnum.md)
- [MergeATSClient::CategoryEnum](docs/CategoryEnum.md)
- [MergeATSClient::CommonModelScopesBodyRequest](docs/CommonModelScopesBodyRequest.md)
- [MergeATSClient::ConditionSchema](docs/ConditionSchema.md)
- [MergeATSClient::ConditionTypeEnum](docs/ConditionTypeEnum.md)
- [MergeATSClient::DataPassthroughRequest](docs/DataPassthroughRequest.md)
- [MergeATSClient::DebugModeLog](docs/DebugModeLog.md)
- [MergeATSClient::DebugModelLogSummary](docs/DebugModelLogSummary.md)
- [MergeATSClient::Department](docs/Department.md)
- [MergeATSClient::DisabilityStatusEnum](docs/DisabilityStatusEnum.md)
- [MergeATSClient::EEOC](docs/EEOC.md)
- [MergeATSClient::EmailAddress](docs/EmailAddress.md)
- [MergeATSClient::EmailAddressRequest](docs/EmailAddressRequest.md)
- [MergeATSClient::EmailAddressTypeEnum](docs/EmailAddressTypeEnum.md)
- [MergeATSClient::EnabledActionsEnum](docs/EnabledActionsEnum.md)
- [MergeATSClient::EncodingEnum](docs/EncodingEnum.md)
- [MergeATSClient::EndUserDetailsRequest](docs/EndUserDetailsRequest.md)
- [MergeATSClient::ErrorValidationProblem](docs/ErrorValidationProblem.md)
- [MergeATSClient::GenderEnum](docs/GenderEnum.md)
- [MergeATSClient::GenerateRemoteKeyRequest](docs/GenerateRemoteKeyRequest.md)
- [MergeATSClient::IgnoreCommonModelRequest](docs/IgnoreCommonModelRequest.md)
- [MergeATSClient::Issue](docs/Issue.md)
- [MergeATSClient::IssueStatusEnum](docs/IssueStatusEnum.md)
- [MergeATSClient::Job](docs/Job.md)
- [MergeATSClient::JobInterviewStage](docs/JobInterviewStage.md)
- [MergeATSClient::JobStatusEnum](docs/JobStatusEnum.md)
- [MergeATSClient::LinkToken](docs/LinkToken.md)
- [MergeATSClient::LinkedAccountCondition](docs/LinkedAccountCondition.md)
- [MergeATSClient::LinkedAccountConditionRequest](docs/LinkedAccountConditionRequest.md)
- [MergeATSClient::LinkedAccountSelectiveSyncConfiguration](docs/LinkedAccountSelectiveSyncConfiguration.md)
- [MergeATSClient::LinkedAccountSelectiveSyncConfigurationListRequest](docs/LinkedAccountSelectiveSyncConfigurationListRequest.md)
- [MergeATSClient::LinkedAccountSelectiveSyncConfigurationRequest](docs/LinkedAccountSelectiveSyncConfigurationRequest.md)
- [MergeATSClient::LinkedAccountStatus](docs/LinkedAccountStatus.md)
- [MergeATSClient::MetaResponse](docs/MetaResponse.md)
- [MergeATSClient::MethodEnum](docs/MethodEnum.md)
- [MergeATSClient::ModelOperation](docs/ModelOperation.md)
- [MergeATSClient::MultipartFormFieldRequest](docs/MultipartFormFieldRequest.md)
- [MergeATSClient::Offer](docs/Offer.md)
- [MergeATSClient::OfferStatusEnum](docs/OfferStatusEnum.md)
- [MergeATSClient::Office](docs/Office.md)
- [MergeATSClient::OperatorSchema](docs/OperatorSchema.md)
- [MergeATSClient::OverallRecommendationEnum](docs/OverallRecommendationEnum.md)
- [MergeATSClient::PaginatedAccountDetailsAndActionsList](docs/PaginatedAccountDetailsAndActionsList.md)
- [MergeATSClient::PaginatedActivityList](docs/PaginatedActivityList.md)
- [MergeATSClient::PaginatedApplicationList](docs/PaginatedApplicationList.md)
- [MergeATSClient::PaginatedAttachmentList](docs/PaginatedAttachmentList.md)
- [MergeATSClient::PaginatedCandidateList](docs/PaginatedCandidateList.md)
- [MergeATSClient::PaginatedConditionSchemaList](docs/PaginatedConditionSchemaList.md)
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
- [MergeATSClient::ReasonEnum](docs/ReasonEnum.md)
- [MergeATSClient::RejectReason](docs/RejectReason.md)
- [MergeATSClient::RemoteData](docs/RemoteData.md)
- [MergeATSClient::RemoteKey](docs/RemoteKey.md)
- [MergeATSClient::RemoteKeyForRegenerationRequest](docs/RemoteKeyForRegenerationRequest.md)
- [MergeATSClient::RemoteResponse](docs/RemoteResponse.md)
- [MergeATSClient::RemoteUser](docs/RemoteUser.md)
- [MergeATSClient::RequestFormatEnum](docs/RequestFormatEnum.md)
- [MergeATSClient::ResponseTypeEnum](docs/ResponseTypeEnum.md)
- [MergeATSClient::ScheduledInterview](docs/ScheduledInterview.md)
- [MergeATSClient::ScheduledInterviewEndpointRequest](docs/ScheduledInterviewEndpointRequest.md)
- [MergeATSClient::ScheduledInterviewRequest](docs/ScheduledInterviewRequest.md)
- [MergeATSClient::ScheduledInterviewResponse](docs/ScheduledInterviewResponse.md)
- [MergeATSClient::ScheduledInterviewStatusEnum](docs/ScheduledInterviewStatusEnum.md)
- [MergeATSClient::Scorecard](docs/Scorecard.md)
- [MergeATSClient::SelectiveSyncConfigurationsUsageEnum](docs/SelectiveSyncConfigurationsUsageEnum.md)
- [MergeATSClient::SyncStatus](docs/SyncStatus.md)
- [MergeATSClient::SyncStatusStatusEnum](docs/SyncStatusStatusEnum.md)
- [MergeATSClient::Tag](docs/Tag.md)
- [MergeATSClient::UpdateApplicationStageRequest](docs/UpdateApplicationStageRequest.md)
- [MergeATSClient::Url](docs/Url.md)
- [MergeATSClient::UrlRequest](docs/UrlRequest.md)
- [MergeATSClient::UrlTypeEnum](docs/UrlTypeEnum.md)
- [MergeATSClient::ValidationProblemSource](docs/ValidationProblemSource.md)
- [MergeATSClient::VeteranStatusEnum](docs/VeteranStatusEnum.md)
- [MergeATSClient::VisibilityEnum](docs/VisibilityEnum.md)
- [MergeATSClient::WarningValidationProblem](docs/WarningValidationProblem.md)
- [MergeATSClient::WebhookReceiver](docs/WebhookReceiver.md)
- [MergeATSClient::WebhookReceiverRequest](docs/WebhookReceiverRequest.md)

## Documentation for Authorization

### tokenAuth

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header
