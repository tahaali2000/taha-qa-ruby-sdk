# test_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module TestApi
  # UsersRequest Model.
  class UsersRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # User's username
    # @return [String]
    attr_accessor :username

    # User's age
    # @return [Integer]
    attr_accessor :age

    # Whether the user is active
    # @return [TrueClass | FalseClass]
    attr_accessor :is_active

    # User's rating
    # @return [Float]
    attr_accessor :rating

    # Signup date
    # @return [Date]
    attr_accessor :signup_date

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['username'] = 'username'
      @_hash['age'] = 'age'
      @_hash['is_active'] = 'isActive'
      @_hash['rating'] = 'rating'
      @_hash['signup_date'] = 'signupDate'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        username
        is_active
        rating
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(age = nil, signup_date = nil, username = SKIP,
                   is_active = SKIP, rating = SKIP)
      @username = username unless username == SKIP
      @age = age
      @is_active = is_active unless is_active == SKIP
      @rating = rating unless rating == SKIP
      @signup_date = signup_date
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      age = hash.key?('age') ? hash['age'] : nil
      signup_date = hash.key?('signupDate') ? hash['signupDate'] : nil
      username = hash.key?('username') ? hash['username'] : SKIP
      is_active = hash.key?('isActive') ? hash['isActive'] : SKIP
      rating = hash.key?('rating') ? hash['rating'] : SKIP

      # Create object from extracted values.
      UsersRequest.new(age,
                       signup_date,
                       username,
                       is_active,
                       rating)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} username: #{@username}, age: #{@age}, is_active: #{@is_active}, rating:"\
      " #{@rating}, signup_date: #{@signup_date}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} username: #{@username.inspect}, age: #{@age.inspect}, is_active:"\
      " #{@is_active.inspect}, rating: #{@rating.inspect}, signup_date: #{@signup_date.inspect}>"
    end
  end
end
