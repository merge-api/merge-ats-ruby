=begin
#Merge ATS API

#The unified API for building rich integrations with multiple Applicant Tracking System platforms.

The version of the OpenAPI document: 1.0
Contact: hello@merge.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module MergeATSClient
  class LinkTokenApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a link token to be used when linking a new end user.
    # @param end_user_details [EndUserDetails] 
    # @param [Hash] opts the optional parameters
    # @return [LinkToken]
    def link_token_create(end_user_details, opts = {})
      data, _status_code, _headers = link_token_create_with_http_info(end_user_details, opts)
      data
    end

    # Creates a link token to be used when linking a new end user.
    # @param end_user_details [EndUserDetails] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LinkToken, Integer, Hash)>] LinkToken data, response status code and response headers
    def link_token_create_with_http_info(end_user_details, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LinkTokenApi.link_token_create ...'
      end
      # verify the required parameter 'end_user_details' is set
      if @api_client.config.client_side_validation && end_user_details.nil?
        fail ArgumentError, "Missing the required parameter 'end_user_details' when calling LinkTokenApi.link_token_create"
      end
      # resource path
      local_var_path = '/link-token'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(end_user_details) 

      # return_type
      return_type = opts[:return_type] || 'LinkToken' 

      # auth_names
      auth_names = opts[:auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LinkTokenApi#link_token_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
