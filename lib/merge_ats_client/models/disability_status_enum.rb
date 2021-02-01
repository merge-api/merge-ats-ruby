=begin
#Merge ATS API

#The unified API for building rich integrations with multiple Applicant Tracking System platforms.

The version of the OpenAPI document: 1.0
Contact: hello@merge.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'date'

module MergeATSClient
  class DisabilityStatusEnum
    YES_I_HAVE_A_DISABILITY_OR_PREVIOUSLY_HAD_A_DISABILITY = "YES_I_HAVE_A_DISABILITY_OR_PREVIOUSLY_HAD_A_DISABILITY".freeze
    NO_I_DONT_HAVE_A_DISABILITY = "NO_I_DONT_HAVE_A_DISABILITY".freeze
    I_DONT_WISH_TO_ANSWER = "I_DONT_WISH_TO_ANSWER".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = DisabilityStatusEnum.constants.select { |c| DisabilityStatusEnum::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #DisabilityStatusEnum" if constantValues.empty?
      value
    end
  end
end
