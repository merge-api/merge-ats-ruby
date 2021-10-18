=begin
#Merge ATS API

#The unified API for building rich integrations with multiple Applicant Tracking System platforms.

The version of the OpenAPI document: 1.0
Contact: hello@merge.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0

=end

require 'date'
require 'time'

module MergeATSClient
  # # The ScheduledInterview Object ### Description The `ScheduledInterview` object is used to represent an interview  ### Usage Example Fetch from the `LIST ScheduledInterviews` endpoint and filter by `interviewers` to show all office locations.
  class ScheduledInterview
    attr_accessor :id

    # The third-party API ID of the matching object.
    attr_accessor :remote_id

    # The application being interviewed.
    attr_accessor :application

    # The stage of the interview.
    attr_accessor :job_interview_stage

    # The user organizing the interview.
    attr_accessor :organizer

    # Array of `RemoteUser` IDs.
    attr_accessor :interviewers

    # The interview's location.
    attr_accessor :location

    # When the interview was started.
    attr_accessor :start_at

    # When the interview was ended.
    attr_accessor :end_at

    # When the third party's interview was created.
    attr_accessor :remote_created_at

    # When the third party's interview was updated.
    attr_accessor :remote_updated_at

    # The interview's status.
    attr_accessor :status

    attr_accessor :remote_data

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'remote_id' => :'remote_id',
        :'application' => :'application',
        :'job_interview_stage' => :'job_interview_stage',
        :'organizer' => :'organizer',
        :'interviewers' => :'interviewers',
        :'location' => :'location',
        :'start_at' => :'start_at',
        :'end_at' => :'end_at',
        :'remote_created_at' => :'remote_created_at',
        :'remote_updated_at' => :'remote_updated_at',
        :'status' => :'status',
        :'remote_data' => :'remote_data'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'remote_id' => :'String',
        :'application' => :'String',
        :'job_interview_stage' => :'String',
        :'organizer' => :'String',
        :'interviewers' => :'Array<String>',
        :'location' => :'String',
        :'start_at' => :'Time',
        :'end_at' => :'Time',
        :'remote_created_at' => :'Time',
        :'remote_updated_at' => :'Time',
        :'status' => :'ScheduledInterviewStatusEnum',
        :'remote_data' => :'Array<RemoteData>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'remote_id',
        :'application',
        :'job_interview_stage',
        :'organizer',
        :'location',
        :'start_at',
        :'end_at',
        :'remote_created_at',
        :'remote_updated_at',
        :'status',
        :'remote_data'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `MergeATSClient::ScheduledInterview` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MergeATSClient::ScheduledInterview`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'remote_id')
        self.remote_id = attributes[:'remote_id']
      end

      if attributes.key?(:'application')
        self.application = attributes[:'application']
      end

      if attributes.key?(:'job_interview_stage')
        self.job_interview_stage = attributes[:'job_interview_stage']
      end

      if attributes.key?(:'organizer')
        self.organizer = attributes[:'organizer']
      end

      if attributes.key?(:'interviewers')
        if (value = attributes[:'interviewers']).is_a?(Array)
          self.interviewers = value
        end
      end

      if attributes.key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.key?(:'start_at')
        self.start_at = attributes[:'start_at']
      end

      if attributes.key?(:'end_at')
        self.end_at = attributes[:'end_at']
      end

      if attributes.key?(:'remote_created_at')
        self.remote_created_at = attributes[:'remote_created_at']
      end

      if attributes.key?(:'remote_updated_at')
        self.remote_updated_at = attributes[:'remote_updated_at']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'remote_data')
        if (value = attributes[:'remote_data']).is_a?(Array)
          self.remote_data = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          remote_id == o.remote_id &&
          application == o.application &&
          job_interview_stage == o.job_interview_stage &&
          organizer == o.organizer &&
          interviewers == o.interviewers &&
          location == o.location &&
          start_at == o.start_at &&
          end_at == o.end_at &&
          remote_created_at == o.remote_created_at &&
          remote_updated_at == o.remote_updated_at &&
          status == o.status &&
          remote_data == o.remote_data
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, remote_id, application, job_interview_stage, organizer, interviewers, location, start_at, end_at, remote_created_at, remote_updated_at, status, remote_data].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = MergeATSClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
