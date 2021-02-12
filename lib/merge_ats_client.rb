=begin
#Merge ATS API

#The unified API for building rich integrations with multiple Applicant Tracking System platforms.

The version of the OpenAPI document: 1.0
Contact: hello@merge.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0

=end

# Common files
require 'merge_ats_client/api_client'
require 'merge_ats_client/api_error'
require 'merge_ats_client/version'
require 'merge_ats_client/configuration'

# Models
require 'merge_ats_client/models/access_role_enum'
require 'merge_ats_client/models/account_token'
require 'merge_ats_client/models/activity'
require 'merge_ats_client/models/activity_type_enum'
require 'merge_ats_client/models/application'
require 'merge_ats_client/models/attachment'
require 'merge_ats_client/models/available_actions_serialzier'
require 'merge_ats_client/models/candidate'
require 'merge_ats_client/models/department'
require 'merge_ats_client/models/disability_status_enum'
require 'merge_ats_client/models/eeoc'
require 'merge_ats_client/models/email_address'
require 'merge_ats_client/models/email_address_type_enum'
require 'merge_ats_client/models/end_user_details'
require 'merge_ats_client/models/gender_enum'
require 'merge_ats_client/models/job'
require 'merge_ats_client/models/job_interview_stage'
require 'merge_ats_client/models/job_interview_stage_change'
require 'merge_ats_client/models/job_status_enum'
require 'merge_ats_client/models/link_token'
require 'merge_ats_client/models/offer'
require 'merge_ats_client/models/offer_status_enum'
require 'merge_ats_client/models/office'
require 'merge_ats_client/models/overall_recommendation_enum'
require 'merge_ats_client/models/paginated_activity_list'
require 'merge_ats_client/models/paginated_application_list'
require 'merge_ats_client/models/paginated_attachment_list'
require 'merge_ats_client/models/paginated_candidate_list'
require 'merge_ats_client/models/paginated_department_list'
require 'merge_ats_client/models/paginated_eeoc_list'
require 'merge_ats_client/models/paginated_job_interview_stage_list'
require 'merge_ats_client/models/paginated_job_list'
require 'merge_ats_client/models/paginated_offer_list'
require 'merge_ats_client/models/paginated_office_list'
require 'merge_ats_client/models/paginated_reject_reason_list'
require 'merge_ats_client/models/paginated_remote_user_list'
require 'merge_ats_client/models/paginated_scheduled_interview_list'
require 'merge_ats_client/models/paginated_scorecard_list'
require 'merge_ats_client/models/paginated_tag_list'
require 'merge_ats_client/models/phone_number'
require 'merge_ats_client/models/phone_number_type_enum'
require 'merge_ats_client/models/race_enum'
require 'merge_ats_client/models/reject_reason'
require 'merge_ats_client/models/remote_user'
require 'merge_ats_client/models/scheduled_interview'
require 'merge_ats_client/models/scheduled_interview_status_enum'
require 'merge_ats_client/models/scorecard'
require 'merge_ats_client/models/tag'
require 'merge_ats_client/models/url'
require 'merge_ats_client/models/url_type_enum'
require 'merge_ats_client/models/veteran_status_enum'
require 'merge_ats_client/models/visibility_enum'

# APIs
require 'merge_ats_client/api/account_token_api'
require 'merge_ats_client/api/activities_api'
require 'merge_ats_client/api/applications_api'
require 'merge_ats_client/api/attachments_api'
require 'merge_ats_client/api/available_models_api'
require 'merge_ats_client/api/candidates_api'
require 'merge_ats_client/api/departments_api'
require 'merge_ats_client/api/eeocs_api'
require 'merge_ats_client/api/interviews_api'
require 'merge_ats_client/api/job_interview_stages_api'
require 'merge_ats_client/api/jobs_api'
require 'merge_ats_client/api/link_token_api'
require 'merge_ats_client/api/offers_api'
require 'merge_ats_client/api/offices_api'
require 'merge_ats_client/api/reject_reasons_api'
require 'merge_ats_client/api/scorecards_api'
require 'merge_ats_client/api/tags_api'
require 'merge_ats_client/api/users_api'

module MergeATSClient
  class << self
    # Customize default settings for the SDK using block.
    #   MergeATSClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
