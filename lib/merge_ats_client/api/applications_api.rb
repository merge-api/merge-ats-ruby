=begin
#Merge ATS API

#The unified API for building rich integrations with multiple Applicant Tracking System platforms.

The version of the OpenAPI document: 1.0
Contact: hello@merge.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'cgi'

module MergeATSClient
  class ApplicationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Updates the `current_stage` field of an `Application` object
    # @param x_account_token [String] Token identifying the end user.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_debug_mode Whether to include debug fields (such as log file links) in the response.
    # @option opts [Boolean] :run_async Whether or not third-party updates should be run asynchronously.
    # @option opts [UpdateApplicationStageRequest] :update_application_stage_request 
    # @return [ApplicationResponse]
    def applications_change_stage_create(x_account_token, id, opts = {})
      data, _status_code, _headers = applications_change_stage_create_with_http_info(x_account_token, id, opts)
      data
    end

    # Updates the &#x60;current_stage&#x60; field of an &#x60;Application&#x60; object
    # @param x_account_token [String] Token identifying the end user.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_debug_mode Whether to include debug fields (such as log file links) in the response.
    # @option opts [Boolean] :run_async Whether or not third-party updates should be run asynchronously.
    # @option opts [UpdateApplicationStageRequest] :update_application_stage_request 
    # @return [Array<(ApplicationResponse, Integer, Hash)>] ApplicationResponse data, response status code and response headers
    def applications_change_stage_create_with_http_info(x_account_token, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicationsApi.applications_change_stage_create ...'
      end
      # verify the required parameter 'x_account_token' is set
      if @api_client.config.client_side_validation && x_account_token.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_token' when calling ApplicationsApi.applications_change_stage_create"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ApplicationsApi.applications_change_stage_create"
      end
      # resource path
      local_var_path = '/applications/{id}/change-stage'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'is_debug_mode'] = opts[:'is_debug_mode'] if !opts[:'is_debug_mode'].nil?
      query_params[:'run_async'] = opts[:'run_async'] if !opts[:'run_async'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'])
      header_params[:'X-Account-Token'] = x_account_token

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_application_stage_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ApplicationResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"ApplicationsApi.applications_change_stage_create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationsApi#applications_change_stage_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Creates an `Application` object with the given values.
    # @param x_account_token [String] Token identifying the end user.
    # @param application_endpoint_request [ApplicationEndpointRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_debug_mode Whether to include debug fields (such as log file links) in the response.
    # @option opts [Boolean] :run_async Whether or not third-party updates should be run asynchronously.
    # @return [ApplicationResponse]
    def applications_create(x_account_token, application_endpoint_request, opts = {})
      data, _status_code, _headers = applications_create_with_http_info(x_account_token, application_endpoint_request, opts)
      data
    end

    # Creates an &#x60;Application&#x60; object with the given values.
    # @param x_account_token [String] Token identifying the end user.
    # @param application_endpoint_request [ApplicationEndpointRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_debug_mode Whether to include debug fields (such as log file links) in the response.
    # @option opts [Boolean] :run_async Whether or not third-party updates should be run asynchronously.
    # @return [Array<(ApplicationResponse, Integer, Hash)>] ApplicationResponse data, response status code and response headers
    def applications_create_with_http_info(x_account_token, application_endpoint_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicationsApi.applications_create ...'
      end
      # verify the required parameter 'x_account_token' is set
      if @api_client.config.client_side_validation && x_account_token.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_token' when calling ApplicationsApi.applications_create"
      end
      # verify the required parameter 'application_endpoint_request' is set
      if @api_client.config.client_side_validation && application_endpoint_request.nil?
        fail ArgumentError, "Missing the required parameter 'application_endpoint_request' when calling ApplicationsApi.applications_create"
      end
      # resource path
      local_var_path = '/applications'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'is_debug_mode'] = opts[:'is_debug_mode'] if !opts[:'is_debug_mode'].nil?
      query_params[:'run_async'] = opts[:'run_async'] if !opts[:'run_async'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'])
      header_params[:'X-Account-Token'] = x_account_token

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(application_endpoint_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ApplicationResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"ApplicationsApi.applications_create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationsApi#applications_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a list of `Application` objects.
    # @param x_account_token [String] Token identifying the end user.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :candidate_id If provided, will only return applications for this candidate.
    # @option opts [Time] :created_after If provided, will only return objects created after this datetime.
    # @option opts [Time] :created_before If provided, will only return objects created before this datetime.
    # @option opts [String] :credited_to_id If provided, will only return applications credited to this user.
    # @option opts [String] :current_stage_id If provided, will only return applications at this interview stage.
    # @option opts [String] :cursor The pagination cursor value.
    # @option opts [String] :expand Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
    # @option opts [Boolean] :include_deleted_data Whether to include data that was marked as deleted by third party webhooks.
    # @option opts [Boolean] :include_remote_data Whether to include the original data Merge fetched from the third-party to produce these models.
    # @option opts [String] :job_id If provided, will only return applications for this job.
    # @option opts [Time] :modified_after If provided, will only return objects modified after this datetime.
    # @option opts [Time] :modified_before If provided, will only return objects modified before this datetime.
    # @option opts [Integer] :page_size Number of results to return per page.
    # @option opts [String] :reject_reason_id If provided, will only return applications with this reject reason.
    # @option opts [String] :remote_id The API provider&#39;s ID for the given object.
    # @option opts [String] :source If provided, will only return applications with this source.
    # @return [PaginatedApplicationList]
    def applications_list(x_account_token, opts = {})
      data, _status_code, _headers = applications_list_with_http_info(x_account_token, opts)
      data
    end

    # Returns a list of &#x60;Application&#x60; objects.
    # @param x_account_token [String] Token identifying the end user.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :candidate_id If provided, will only return applications for this candidate.
    # @option opts [Time] :created_after If provided, will only return objects created after this datetime.
    # @option opts [Time] :created_before If provided, will only return objects created before this datetime.
    # @option opts [String] :credited_to_id If provided, will only return applications credited to this user.
    # @option opts [String] :current_stage_id If provided, will only return applications at this interview stage.
    # @option opts [String] :cursor The pagination cursor value.
    # @option opts [String] :expand Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
    # @option opts [Boolean] :include_deleted_data Whether to include data that was marked as deleted by third party webhooks.
    # @option opts [Boolean] :include_remote_data Whether to include the original data Merge fetched from the third-party to produce these models.
    # @option opts [String] :job_id If provided, will only return applications for this job.
    # @option opts [Time] :modified_after If provided, will only return objects modified after this datetime.
    # @option opts [Time] :modified_before If provided, will only return objects modified before this datetime.
    # @option opts [Integer] :page_size Number of results to return per page.
    # @option opts [String] :reject_reason_id If provided, will only return applications with this reject reason.
    # @option opts [String] :remote_id The API provider&#39;s ID for the given object.
    # @option opts [String] :source If provided, will only return applications with this source.
    # @return [Array<(PaginatedApplicationList, Integer, Hash)>] PaginatedApplicationList data, response status code and response headers
    def applications_list_with_http_info(x_account_token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicationsApi.applications_list ...'
      end
      # verify the required parameter 'x_account_token' is set
      if @api_client.config.client_side_validation && x_account_token.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_token' when calling ApplicationsApi.applications_list"
      end
      allowable_values = ["candidate", "candidate,credited_to", "candidate,credited_to,current_stage", "candidate,credited_to,current_stage,reject_reason", "candidate,credited_to,reject_reason", "candidate,current_stage", "candidate,current_stage,reject_reason", "candidate,job", "candidate,job,credited_to", "candidate,job,credited_to,current_stage", "candidate,job,credited_to,current_stage,reject_reason", "candidate,job,credited_to,reject_reason", "candidate,job,current_stage", "candidate,job,current_stage,reject_reason", "candidate,job,reject_reason", "candidate,reject_reason", "credited_to", "credited_to,current_stage", "credited_to,current_stage,reject_reason", "credited_to,reject_reason", "current_stage", "current_stage,reject_reason", "job", "job,credited_to", "job,credited_to,current_stage", "job,credited_to,current_stage,reject_reason", "job,credited_to,reject_reason", "job,current_stage", "job,current_stage,reject_reason", "job,reject_reason", "reject_reason"]
      if @api_client.config.client_side_validation && opts[:'expand'] && !allowable_values.include?(opts[:'expand'])
        fail ArgumentError, "invalid value for \"expand\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/applications'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'candidate_id'] = opts[:'candidate_id'] if !opts[:'candidate_id'].nil?
      query_params[:'created_after'] = opts[:'created_after'] if !opts[:'created_after'].nil?
      query_params[:'created_before'] = opts[:'created_before'] if !opts[:'created_before'].nil?
      query_params[:'credited_to_id'] = opts[:'credited_to_id'] if !opts[:'credited_to_id'].nil?
      query_params[:'current_stage_id'] = opts[:'current_stage_id'] if !opts[:'current_stage_id'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'expand'] = opts[:'expand'] if !opts[:'expand'].nil?
      query_params[:'include_deleted_data'] = opts[:'include_deleted_data'] if !opts[:'include_deleted_data'].nil?
      query_params[:'include_remote_data'] = opts[:'include_remote_data'] if !opts[:'include_remote_data'].nil?
      query_params[:'job_id'] = opts[:'job_id'] if !opts[:'job_id'].nil?
      query_params[:'modified_after'] = opts[:'modified_after'] if !opts[:'modified_after'].nil?
      query_params[:'modified_before'] = opts[:'modified_before'] if !opts[:'modified_before'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'reject_reason_id'] = opts[:'reject_reason_id'] if !opts[:'reject_reason_id'].nil?
      query_params[:'remote_id'] = opts[:'remote_id'] if !opts[:'remote_id'].nil?
      query_params[:'source'] = opts[:'source'] if !opts[:'source'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-Account-Token'] = x_account_token

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PaginatedApplicationList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"ApplicationsApi.applications_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationsApi#applications_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns metadata for `Application` POSTs.
    # @param x_account_token [String] Token identifying the end user.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :application_remote_template_id The template ID associated with the nested application in the request.
    # @return [MetaResponse]
    def applications_meta_post_retrieve(x_account_token, opts = {})
      data, _status_code, _headers = applications_meta_post_retrieve_with_http_info(x_account_token, opts)
      data
    end

    # Returns metadata for &#x60;Application&#x60; POSTs.
    # @param x_account_token [String] Token identifying the end user.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :application_remote_template_id The template ID associated with the nested application in the request.
    # @return [Array<(MetaResponse, Integer, Hash)>] MetaResponse data, response status code and response headers
    def applications_meta_post_retrieve_with_http_info(x_account_token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicationsApi.applications_meta_post_retrieve ...'
      end
      # verify the required parameter 'x_account_token' is set
      if @api_client.config.client_side_validation && x_account_token.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_token' when calling ApplicationsApi.applications_meta_post_retrieve"
      end
      # resource path
      local_var_path = '/applications/meta/post'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'application_remote_template_id'] = opts[:'application_remote_template_id'] if !opts[:'application_remote_template_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-Account-Token'] = x_account_token

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'MetaResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"ApplicationsApi.applications_meta_post_retrieve",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationsApi#applications_meta_post_retrieve\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns an `Application` object with the given `id`.
    # @param x_account_token [String] Token identifying the end user.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
    # @option opts [Boolean] :include_remote_data Whether to include the original data Merge fetched from the third-party to produce these models.
    # @return [Application]
    def applications_retrieve(x_account_token, id, opts = {})
      data, _status_code, _headers = applications_retrieve_with_http_info(x_account_token, id, opts)
      data
    end

    # Returns an &#x60;Application&#x60; object with the given &#x60;id&#x60;.
    # @param x_account_token [String] Token identifying the end user.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
    # @option opts [Boolean] :include_remote_data Whether to include the original data Merge fetched from the third-party to produce these models.
    # @return [Array<(Application, Integer, Hash)>] Application data, response status code and response headers
    def applications_retrieve_with_http_info(x_account_token, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicationsApi.applications_retrieve ...'
      end
      # verify the required parameter 'x_account_token' is set
      if @api_client.config.client_side_validation && x_account_token.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_token' when calling ApplicationsApi.applications_retrieve"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ApplicationsApi.applications_retrieve"
      end
      allowable_values = ["candidate", "candidate,credited_to", "candidate,credited_to,current_stage", "candidate,credited_to,current_stage,reject_reason", "candidate,credited_to,reject_reason", "candidate,current_stage", "candidate,current_stage,reject_reason", "candidate,job", "candidate,job,credited_to", "candidate,job,credited_to,current_stage", "candidate,job,credited_to,current_stage,reject_reason", "candidate,job,credited_to,reject_reason", "candidate,job,current_stage", "candidate,job,current_stage,reject_reason", "candidate,job,reject_reason", "candidate,reject_reason", "credited_to", "credited_to,current_stage", "credited_to,current_stage,reject_reason", "credited_to,reject_reason", "current_stage", "current_stage,reject_reason", "job", "job,credited_to", "job,credited_to,current_stage", "job,credited_to,current_stage,reject_reason", "job,credited_to,reject_reason", "job,current_stage", "job,current_stage,reject_reason", "job,reject_reason", "reject_reason"]
      if @api_client.config.client_side_validation && opts[:'expand'] && !allowable_values.include?(opts[:'expand'])
        fail ArgumentError, "invalid value for \"expand\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/applications/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = opts[:'expand'] if !opts[:'expand'].nil?
      query_params[:'include_remote_data'] = opts[:'include_remote_data'] if !opts[:'include_remote_data'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-Account-Token'] = x_account_token

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Application'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"ApplicationsApi.applications_retrieve",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicationsApi#applications_retrieve\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
