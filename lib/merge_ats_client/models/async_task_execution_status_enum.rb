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
  class AsyncTaskExecutionStatusEnum
    PENDING = "PENDING".freeze
    STARTED = "STARTED".freeze
    COMPLETED = "COMPLETED".freeze

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
      constantValues = AsyncTaskExecutionStatusEnum.constants.select { |c| AsyncTaskExecutionStatusEnum::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #AsyncTaskExecutionStatusEnum" if constantValues.empty?
      value
    end
  end
end
