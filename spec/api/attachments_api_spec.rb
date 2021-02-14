=begin
#Merge ATS API

#The unified API for building rich integrations with multiple Applicant Tracking System platforms.

The version of the OpenAPI document: 1.0
Contact: hello@merge.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0

=end

require 'spec_helper'
require 'json'

# Unit tests for MergeATSClient::AttachmentsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AttachmentsApi' do
  before do
    # run before each test
    @api_instance = MergeATSClient::AttachmentsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AttachmentsApi' do
    it 'should create an instance of AttachmentsApi' do
      expect(@api_instance).to be_instance_of(MergeATSClient::AttachmentsApi)
    end
  end

  # unit tests for attachments_list
  # Returns a list of &#x60;Attachment&#x60; objects.
  # @param x_account_token Token identifying the end user.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :candidate_id If provided, will only return attachments for this candidate.
  # @option opts [Time] :created_after If provided, will only return objects created after this datetime.
  # @option opts [Time] :created_before If provided, will only return objects created before this datetime.
  # @option opts [String] :cursor The pagination cursor value.
  # @option opts [Time] :modified_after If provided, will only return objects modified after this datetime.
  # @option opts [Time] :modified_before If provided, will only return objects modified before this datetime.
  # @option opts [Integer] :page_size Number of results to return per page.
  # @option opts [String] :remote_id The API provider&#39;s ID for the given object.
  # @return [PaginatedAttachmentList]
  describe 'attachments_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for attachments_retrieve
  # Returns an &#x60;Attachment&#x60; object with the given &#x60;id&#x60;.
  # @param x_account_token Token identifying the end user.
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [Attachment]
  describe 'attachments_retrieve test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
