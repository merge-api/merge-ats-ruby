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

# Unit tests for MergeATSClient::LinkedAccountsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LinkedAccountsApi' do
  before do
    # run before each test
    @api_instance = MergeATSClient::LinkedAccountsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LinkedAccountsApi' do
    it 'should create an instance of LinkedAccountsApi' do
      expect(@api_instance).to be_instance_of(MergeATSClient::LinkedAccountsApi)
    end
  end

  # unit tests for linked_accounts_list
  # List linked accounts for your organization.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :category 
  # @option opts [String] :cursor The pagination cursor value.
  # @option opts [String] :end_user_email_address If provided, will only return linked accounts associated with the given email address.
  # @option opts [String] :end_user_organization_name If provided, will only return linked accounts associated with the given organization name.
  # @option opts [String] :end_user_origin_id If provided, will only return linked accounts associated with the given origin ID.
  # @option opts [String] :end_user_origin_ids Comma-separated list of EndUser origin IDs, making it possible to specify multiple EndUsers at once.
  # @option opts [String] :id 
  # @option opts [String] :ids Comma-separated list of LinkedAccount IDs, making it possible to specify multiple LinkedAccounts at once.
  # @option opts [Boolean] :include_duplicates If &#x60;true&#x60;, will include complete production duplicates of the account specified by the &#x60;id&#x60; query parameter in the response. &#x60;id&#x60; must be for a complete production linked account.
  # @option opts [String] :integration_name If provided, will only return linked accounts associated with the given integration name.
  # @option opts [String] :is_test_account If included, will only include test linked accounts. If not included, will only include non-test linked accounts.
  # @option opts [Integer] :page_size Number of results to return per page.
  # @option opts [String] :status Filter by status. Options: &#x60;COMPLETE&#x60;, &#x60;INCOMPLETE&#x60;, &#x60;RELINK_NEEDED&#x60;
  # @return [PaginatedAccountDetailsAndActionsList]
  describe 'linked_accounts_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
