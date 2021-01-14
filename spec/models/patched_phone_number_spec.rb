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

# Unit tests for MergeATSClient::PatchedPhoneNumber
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PatchedPhoneNumber' do
  before do
    # run before each test
    @instance = MergeATSClient::PatchedPhoneNumber.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PatchedPhoneNumber' do
    it 'should create an instance of PatchedPhoneNumber' do
      expect(@instance).to be_instance_of(MergeATSClient::PatchedPhoneNumber)
    end
  end
  describe 'test attribute "value"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "phone_number_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
