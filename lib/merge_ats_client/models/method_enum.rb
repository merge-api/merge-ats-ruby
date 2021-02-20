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
  class MethodEnum
    GET = "GET".freeze
    OPTIONS = "OPTIONS".freeze
    HEAD = "HEAD".freeze
    POST = "POST".freeze
    PUT = "PUT".freeze
    PATCH = "PATCH".freeze
    DELETE = "DELETE".freeze

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
      constantValues = MethodEnum.constants.select { |c| MethodEnum::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #MethodEnum" if constantValues.empty?
      value
    end
  end
end