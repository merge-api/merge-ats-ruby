=begin
#Merge ATS API

#The unified API for building rich integrations with multiple Applicant Tracking System platforms.

The version of the OpenAPI document: 1.0
Contact: hello@merge.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0

=end

require 'date'
require 'time'

module MergeATSClient
  class OfferStatusEnum
    DRAFT = "DRAFT".freeze
    APPROVAL_SENT = "APPROVAL-SENT".freeze
    APPROVED = "APPROVED".freeze
    SENT = "SENT".freeze
    SENT_MANUALLY = "SENT-MANUALLY".freeze
    OPENED = "OPENED".freeze
    DENIED = "DENIED".freeze
    SIGNED = "SIGNED".freeze
    DEPRECATED = "DEPRECATED".freeze

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
      value
    end
  end
end
