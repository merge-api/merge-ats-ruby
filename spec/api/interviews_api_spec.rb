=begin
#Merge ATS API

#The unified API for building rich integrations with multiple Applicant Tracking System platforms.

The version of the OpenAPI document: 1.0
Contact: hello@merge.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for MergeATSClient::InterviewsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'InterviewsApi' do
  before do
    # run before each test
    @api_instance = MergeATSClient::InterviewsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InterviewsApi' do
    it 'should create an instance of InterviewsApi' do
      expect(@api_instance).to be_instance_of(MergeATSClient::InterviewsApi)
    end
  end

  # unit tests for interviews_create
  # Creates a &#x60;ScheduledInterview&#x60; object with the given values.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_account_token Token identifying the end user.
  # @option opts [Boolean] :run_async Whether or not third-party updates should be run asynchronously.
  # @option opts [ScheduledInterview] :scheduled_interview 
  # @return [ScheduledInterview]
  describe 'interviews_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for interviews_destroy
  # Deletes a &#x60;ScheduledInterview&#x60; object with the given &#x60;id&#x60;.
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_account_token Token identifying the end user.
  # @option opts [Boolean] :run_async Whether or not third-party updates should be run asynchronously.
  # @return [ScheduledInterview]
  describe 'interviews_destroy test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for interviews_list
  # Returns a list of &#x60;ScheduledInterview&#x60; objects.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_account_token Token identifying the end user.
  # @option opts [String] :application_id If provided, will only return interviews for this application.
  # @option opts [DateTime] :created_after If provided, will only return objects created after this datetime.
  # @option opts [DateTime] :created_before If provided, will only return objects created before this datetime.
  # @option opts [Integer] :cursor The pagination cursor value.
  # @option opts [String] :expand Which relations should be returned in expanded form.
  # @option opts [DateTime] :modified_after If provided, will only return objects modified after this datetime.
  # @option opts [DateTime] :modified_before If provided, will only return objects modified before this datetime.
  # @option opts [String] :organizer_id If provided, will only return interviews organized by this user.
  # @option opts [Integer] :page_size Number of results to return per page.
  # @option opts [String] :remote_id The API provider&#39;s ID for the given object.
  # @return [PaginatedScheduledInterviewList]
  describe 'interviews_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for interviews_partial_update
  # Updates a &#x60;ScheduledInterview&#x60; object with the given &#x60;id&#x60;.
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_account_token Token identifying the end user.
  # @option opts [Boolean] :run_async Whether or not third-party updates should be run asynchronously.
  # @option opts [PatchedScheduledInterview] :patched_scheduled_interview 
  # @return [ScheduledInterview]
  describe 'interviews_partial_update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for interviews_retrieve
  # Returns a &#x60;ScheduledInterview&#x60; object with the given &#x60;id&#x60;.
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_account_token Token identifying the end user.
  # @option opts [String] :expand Which relations should be returned in expanded form.
  # @return [ScheduledInterview]
  describe 'interviews_retrieve test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
