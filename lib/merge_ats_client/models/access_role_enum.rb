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
  class AccessRoleEnum
    SUPER_ADMIN = "SUPER_ADMIN".freeze
    ADMIN = "ADMIN".freeze
    TEAM_MEMBER = "TEAM_MEMBER".freeze
    LIMITED_TEAM_MEMBER = "LIMITED_TEAM_MEMBER".freeze
    INTERVIEWER = "INTERVIEWER".freeze

    MERGE_NONSTANDARD_VALUE = "MERGE_NONSTANDARD_VALUE".freeze

    attr_accessor :value
    attr_accessor :raw_value

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      @raw_value = value
      if ["SUPER_ADMIN", "ADMIN", "TEAM_MEMBER", "LIMITED_TEAM_MEMBER", "INTERVIEWER", ].include? value
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
