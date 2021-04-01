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

# Unit tests for MergeATSClient::SyncStatusApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SyncStatusApi' do
  before do
    # run before each test
    @api_instance = MergeATSClient::SyncStatusApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SyncStatusApi' do
    it 'should create an instance of SyncStatusApi' do
      expect(@api_instance).to be_instance_of(MergeATSClient::SyncStatusApi)
    end
  end

  # unit tests for sync_status_retrieve
  # Get syncing status.
  # @param [Hash] opts the optional parameters
  # @return [SyncStatus]
  describe 'sync_status_retrieve test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
