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
  class JobInterviewStagesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns a list of `JobInterviewStage` objects.
    # @param x_account_token [String] Token identifying the end user.
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :created_after If provided, will only return objects created after this datetime.
    # @option opts [DateTime] :created_before If provided, will only return objects created before this datetime.
    # @option opts [String] :cursor The pagination cursor value.
    # @option opts [String] :expand Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
    # @option opts [String] :job_id If provided, will only return interview stages for this job.
    # @option opts [DateTime] :modified_after If provided, will only return objects modified after this datetime.
    # @option opts [DateTime] :modified_before If provided, will only return objects modified before this datetime.
    # @option opts [Integer] :page_size Number of results to return per page.
    # @option opts [String] :remote_id The API provider&#39;s ID for the given object.
    # @return [PaginatedJobInterviewStageList]
    def job_interview_stages_list(x_account_token, opts = {})
      data, _status_code, _headers = job_interview_stages_list_with_http_info(x_account_token, opts)
      data
    end

    # Returns a list of &#x60;JobInterviewStage&#x60; objects.
    # @param x_account_token [String] Token identifying the end user.
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :created_after If provided, will only return objects created after this datetime.
    # @option opts [DateTime] :created_before If provided, will only return objects created before this datetime.
    # @option opts [String] :cursor The pagination cursor value.
    # @option opts [String] :expand Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
    # @option opts [String] :job_id If provided, will only return interview stages for this job.
    # @option opts [DateTime] :modified_after If provided, will only return objects modified after this datetime.
    # @option opts [DateTime] :modified_before If provided, will only return objects modified before this datetime.
    # @option opts [Integer] :page_size Number of results to return per page.
    # @option opts [String] :remote_id The API provider&#39;s ID for the given object.
    # @return [Array<(PaginatedJobInterviewStageList, Integer, Hash)>] PaginatedJobInterviewStageList data, response status code and response headers
    def job_interview_stages_list_with_http_info(x_account_token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobInterviewStagesApi.job_interview_stages_list ...'
      end
      # verify the required parameter 'x_account_token' is set
      if @api_client.config.client_side_validation && x_account_token.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_token' when calling JobInterviewStagesApi.job_interview_stages_list"
      end
      allowable_values = ["departments", "departments,job", "departments,offices", "departments,offices,job", "job", "offices", "offices,job"]
      if @api_client.config.client_side_validation && opts[:'expand'] && !allowable_values.include?(opts[:'expand'])
        fail ArgumentError, "invalid value for \"expand\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/job-interview-stages'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'created_after'] = opts[:'created_after'] if !opts[:'created_after'].nil?
      query_params[:'created_before'] = opts[:'created_before'] if !opts[:'created_before'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'expand'] = opts[:'expand'] if !opts[:'expand'].nil?
      query_params[:'job_id'] = opts[:'job_id'] if !opts[:'job_id'].nil?
      query_params[:'modified_after'] = opts[:'modified_after'] if !opts[:'modified_after'].nil?
      query_params[:'modified_before'] = opts[:'modified_before'] if !opts[:'modified_before'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'remote_id'] = opts[:'remote_id'] if !opts[:'remote_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-Account-Token'] = x_account_token

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'PaginatedJobInterviewStageList' 

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

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobInterviewStagesApi#job_interview_stages_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a `JobInterviewStage` object with the given `id`.
    # @param x_account_token [String] Token identifying the end user.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
    # @return [JobInterviewStage]
    def job_interview_stages_retrieve(x_account_token, id, opts = {})
      data, _status_code, _headers = job_interview_stages_retrieve_with_http_info(x_account_token, id, opts)
      data
    end

    # Returns a &#x60;JobInterviewStage&#x60; object with the given &#x60;id&#x60;.
    # @param x_account_token [String] Token identifying the end user.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
    # @return [Array<(JobInterviewStage, Integer, Hash)>] JobInterviewStage data, response status code and response headers
    def job_interview_stages_retrieve_with_http_info(x_account_token, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: JobInterviewStagesApi.job_interview_stages_retrieve ...'
      end
      # verify the required parameter 'x_account_token' is set
      if @api_client.config.client_side_validation && x_account_token.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_token' when calling JobInterviewStagesApi.job_interview_stages_retrieve"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling JobInterviewStagesApi.job_interview_stages_retrieve"
      end
      allowable_values = ["departments", "departments,job", "departments,offices", "departments,offices,job", "job", "offices", "offices,job"]
      if @api_client.config.client_side_validation && opts[:'expand'] && !allowable_values.include?(opts[:'expand'])
        fail ArgumentError, "invalid value for \"expand\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/job-interview-stages/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = opts[:'expand'] if !opts[:'expand'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-Account-Token'] = x_account_token

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'JobInterviewStage' 

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

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: JobInterviewStagesApi#job_interview_stages_retrieve\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
