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

# Unit tests for MergeATSClient::EndUserDetails
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'EndUserDetails' do
  before do
    # run before each test
    @instance = MergeATSClient::EndUserDetails.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EndUserDetails' do
    it 'should create an instance of EndUserDetails' do
      expect(@instance).to be_instance_of(MergeATSClient::EndUserDetails)
    end
  end
  describe 'test attribute "end_user_email_address"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "end_user_organization_name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "end_user_origin_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "categories"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["hris", "ats"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.categories = value }.not_to raise_error
      # end
    end
  end

end
