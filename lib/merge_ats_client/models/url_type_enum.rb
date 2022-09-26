=begin
#Merge ATS API

#The unified API for building rich integrations with multiple Applicant Tracking System platforms.

The version of the OpenAPI document: 1.0
Contact: hello@merge.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'date'
require 'time'

module MergeATSClient
  class UrlTypeEnum
    PERSONAL = "PERSONAL".freeze
    COMPANY = "COMPANY".freeze
    PORTFOLIO = "PORTFOLIO".freeze
    BLOG = "BLOG".freeze
    SOCIAL_MEDIA = "SOCIAL_MEDIA".freeze
    OTHER = "OTHER".freeze
    JOB_POSTING = "JOB_POSTING".freeze

    MERGE_NONSTANDARD_VALUE = "MERGE_NONSTANDARD_VALUE".freeze

    attr_accessor :value
    attr_accessor :raw_value

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      @raw_value = value
      if ["PERSONAL", "COMPANY", "PORTFOLIO", "BLOG", "SOCIAL_MEDIA", "OTHER", "JOB_POSTING", ].include? value
        @value = value
      else
        @value = MERGE_NONSTANDARD_VALUE
      end

      self
    end

    def self.build_from_hash(value)
      IssueStatusEnum.new.build_from_hash(value)
    end
  end

end
