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
require 'date'

# Unit tests for MergeATSClient::EmailAddress
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'EmailAddress' do
  before do
    # run before each test
    @instance = MergeATSClient::EmailAddress.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EmailAddress' do
    it 'should create an instance of EmailAddress' do
      expect(@instance).to be_instance_of(MergeATSClient::EmailAddress)
    end
  end
  describe 'test attribute "value"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "email_address_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
