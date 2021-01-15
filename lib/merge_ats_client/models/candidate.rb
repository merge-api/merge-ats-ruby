=begin
#Merge ATS API

#The unified API for building rich integrations with multiple Applicant Tracking System platforms.

The version of the OpenAPI document: 1.0
Contact: hello@merge.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'date'

module MergeATSClient
  # # The Candidate Object ### Description The `Candidate` object is used to represent a Candidate for various positions.  ### Usage Example Fetch from the `LIST Candidates` endpoint and filter by `ID` to show all candidates.
  class Candidate
    attr_accessor :id

    # The third-party API ID of the matching object.
    attr_accessor :remote_id

    # The user's first name.
    attr_accessor :first_name

    # The user's last name.
    attr_accessor :last_name

    # The candidate's current company.
    attr_accessor :company

    # The candidate's current title.
    attr_accessor :title

    # When the third party's candidate was created.
    attr_accessor :remote_created_at

    # When the third party's candidate was updated.
    attr_accessor :remote_updated_at

    # When the most recent candidate interaction occurred.
    attr_accessor :last_interaction_at

    # Whether or not the candidate is private.
    attr_accessor :is_private

    # Whether or not the candidate can be emailed.
    attr_accessor :can_email

    attr_accessor :locations

    attr_accessor :phone_numbers

    attr_accessor :email_addresses

    attr_accessor :urls

    attr_accessor :tags

    attr_accessor :applications

    attr_accessor :attachments

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'remote_id' => :'remote_id',
        :'first_name' => :'first_name',
        :'last_name' => :'last_name',
        :'company' => :'company',
        :'title' => :'title',
        :'remote_created_at' => :'remote_created_at',
        :'remote_updated_at' => :'remote_updated_at',
        :'last_interaction_at' => :'last_interaction_at',
        :'is_private' => :'is_private',
        :'can_email' => :'can_email',
        :'locations' => :'locations',
        :'phone_numbers' => :'phone_numbers',
        :'email_addresses' => :'email_addresses',
        :'urls' => :'urls',
        :'tags' => :'tags',
        :'applications' => :'applications',
        :'attachments' => :'attachments'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'remote_id' => :'String',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'company' => :'String',
        :'title' => :'String',
        :'remote_created_at' => :'DateTime',
        :'remote_updated_at' => :'DateTime',
        :'last_interaction_at' => :'DateTime',
        :'is_private' => :'Boolean',
        :'can_email' => :'Boolean',
        :'locations' => :'Array<String>',
        :'phone_numbers' => :'Array<PhoneNumber>',
        :'email_addresses' => :'Array<EmailAddress>',
        :'urls' => :'Array<Url>',
        :'tags' => :'Array<Tag>',
        :'applications' => :'Array<String>',
        :'attachments' => :'Array<String>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'remote_id',
        :'first_name',
        :'last_name',
        :'company',
        :'title',
        :'remote_created_at',
        :'remote_updated_at',
        :'last_interaction_at',
        :'is_private',
        :'can_email',
        :'locations',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `MergeATSClient::Candidate` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MergeATSClient::Candidate`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'remote_id')
        self.remote_id = attributes[:'remote_id']
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'company')
        self.company = attributes[:'company']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'remote_created_at')
        self.remote_created_at = attributes[:'remote_created_at']
      end

      if attributes.key?(:'remote_updated_at')
        self.remote_updated_at = attributes[:'remote_updated_at']
      end

      if attributes.key?(:'last_interaction_at')
        self.last_interaction_at = attributes[:'last_interaction_at']
      end

      if attributes.key?(:'is_private')
        self.is_private = attributes[:'is_private']
      end

      if attributes.key?(:'can_email')
        self.can_email = attributes[:'can_email']
      end

      if attributes.key?(:'locations')
        if (value = attributes[:'locations']).is_a?(Array)
          self.locations = value
        end
      end

      if attributes.key?(:'phone_numbers')
        if (value = attributes[:'phone_numbers']).is_a?(Array)
          self.phone_numbers = value
        end
      end

      if attributes.key?(:'email_addresses')
        if (value = attributes[:'email_addresses']).is_a?(Array)
          self.email_addresses = value
        end
      end

      if attributes.key?(:'urls')
        if (value = attributes[:'urls']).is_a?(Array)
          self.urls = value
        end
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'applications')
        if (value = attributes[:'applications']).is_a?(Array)
          self.applications = value
        end
      end

      if attributes.key?(:'attachments')
        if (value = attributes[:'attachments']).is_a?(Array)
          self.attachments = value
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
          first_name == o.first_name &&
          last_name == o.last_name &&
          company == o.company &&
          title == o.title &&
          remote_created_at == o.remote_created_at &&
          remote_updated_at == o.remote_updated_at &&
          last_interaction_at == o.last_interaction_at &&
          is_private == o.is_private &&
          can_email == o.can_email &&
          locations == o.locations &&
          phone_numbers == o.phone_numbers &&
          email_addresses == o.email_addresses &&
          urls == o.urls &&
          tags == o.tags &&
          applications == o.applications &&
          attachments == o.attachments
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, remote_id, first_name, last_name, company, title, remote_created_at, remote_updated_at, last_interaction_at, is_private, can_email, locations, phone_numbers, email_addresses, urls, tags, applications, attachments].hash
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
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
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
        MergeATSClient.const_get(type).build_from_hash(value)
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
