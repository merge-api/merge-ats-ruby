=begin
#Merge ATS API

#The unified API for building rich integrations with multiple Applicant Tracking System platforms.

The version of the OpenAPI document: 1.0
Contact: hello@merge.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'spec_helper'
require 'json'

# Unit tests for MergeATSClient::GenerateKeyApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'GenerateKeyApi' do
  before do
    # run before each test
    @api_instance = MergeATSClient::GenerateKeyApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GenerateKeyApi' do
    it 'should create an instance of GenerateKeyApi' do
      expect(@api_instance).to be_instance_of(MergeATSClient::GenerateKeyApi)
    end
  end

  # unit tests for generate_key_create
  # Create a remote key.
  # @param generate_remote_key_request 
  # @param [Hash] opts the optional parameters
  # @return [RemoteKey]
  describe 'generate_key_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end