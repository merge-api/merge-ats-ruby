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

# Unit tests for MergeATSClient::AccountTokenApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AccountTokenApi' do
  before do
    # run before each test
    @api_instance = MergeATSClient::AccountTokenApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AccountTokenApi' do
    it 'should create an instance of AccountTokenApi' do
      expect(@api_instance).to be_instance_of(MergeATSClient::AccountTokenApi)
    end
  end

  # unit tests for account_token_retrieve
  # Returns the account token for the end user with the provided public token.
  # @param public_token 
  # @param [Hash] opts the optional parameters
  # @return [AccountToken]
  describe 'account_token_retrieve test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
