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
  # # The Scorecard Object ### Description The `Scorecard` object is used to represent a Scorecard for an interview  ### Usage Example Fetch from the `LIST Scorecards` endpoint and filter by `application` to show all scorecard for an applicant.
  class Scorecard
    attr_accessor :id

    # The third-party API ID of the matching object.
    attr_accessor :remote_id

    # The application being scored.
    attr_accessor :application

    # The interview being scored.
    attr_accessor :interview

    # The interviewer doing the scoring.
    attr_accessor :interviewer

    # When the third party's scorecard was created.
    attr_accessor :remote_created_at

    # When the scorecard was submitted.
    attr_accessor :submitted_at

    # The inteviewer's recommendation.
    attr_accessor :overall_recommendation

    attr_accessor :remote_data

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'remote_id' => :'remote_id',
        :'application' => :'application',
        :'interview' => :'interview',
        :'interviewer' => :'interviewer',
        :'remote_created_at' => :'remote_created_at',
        :'submitted_at' => :'submitted_at',
        :'overall_recommendation' => :'overall_recommendation',
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
        :'interview' => :'String',
        :'interviewer' => :'String',
        :'remote_created_at' => :'Time',
        :'submitted_at' => :'Time',
        :'overall_recommendation' => :'OverallRecommendationEnum',
        :'remote_data' => :'Array<RemoteData>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'remote_id',
        :'application',
        :'interview',
        :'interviewer',
        :'remote_created_at',
        :'submitted_at',
        :'overall_recommendation',
        :'remote_data'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `MergeATSClient::Scorecard` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MergeATSClient::Scorecard`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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

      if attributes.key?(:'interview')
        self.interview = attributes[:'interview']
      end

      if attributes.key?(:'interviewer')
        self.interviewer = attributes[:'interviewer']
      end

      if attributes.key?(:'remote_created_at')
        self.remote_created_at = attributes[:'remote_created_at']
      end

      if attributes.key?(:'submitted_at')
        self.submitted_at = attributes[:'submitted_at']
      end

      if attributes.key?(:'overall_recommendation')
        self.overall_recommendation = attributes[:'overall_recommendation']
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
          interview == o.interview &&
          interviewer == o.interviewer &&
          remote_created_at == o.remote_created_at &&
          submitted_at == o.submitted_at &&
          overall_recommendation == o.overall_recommendation &&
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
      [id, remote_id, application, interview, interviewer, remote_created_at, submitted_at, overall_recommendation, remote_data].hash
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
