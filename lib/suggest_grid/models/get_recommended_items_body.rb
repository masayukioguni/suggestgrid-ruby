# This file was automatically generated for SuggestGrid by APIMATIC v2.0 ( https://apimatic.io ).

module SuggestGrid
  class GetRecommendedItemsBody

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :user_id

    # TODO: Write general description for this method
    # @return [List of String]
    attr_accessor :user_ids

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :size

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :similar_item_id

    # TODO: Write general description for this method
    # @return [List of String]
    attr_accessor :fields

    # TODO: Write general description for this method
    # @return [Object]
    attr_accessor :filter

    # These ids will not be included in the response.
    # @return [List of String]
    attr_accessor :except

    def initialize(type = nil,
                   user_id = nil,
                   user_ids = nil,
                   size = nil,
                   similar_item_id = nil,
                   fields = nil,
                   filter = nil,
                   except = nil)
      @type = type
      @user_id = user_id
      @user_ids = user_ids
      @size = size
      @similar_item_id = similar_item_id
      @fields = fields
      @filter = filter
      @except = except

    end

    # Creates JSON of the curent object
    def to_json(options = {})
      hash = key_map
      hash.to_json(options)
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        type = hash["type"]
        user_id = hash["user_id"]
        user_ids = hash["user_ids"]
        size = hash["size"]
        similar_item_id = hash["similar_item_id"]
        fields = hash["fields"]
        filter = hash["filter"]
        except = hash["except"]
        # Create object from extracted values
        GetRecommendedItemsBody.new(type,
                                    user_id,
                                    user_ids,
                                    size,
                                    similar_item_id,
                                    fields,
                                    filter,
                                    except)
      end
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['type'] = type
      hash['user_id'] = user_id
      hash['user_ids'] = user_ids
      hash['size'] = size
      hash['similar_item_id'] = similar_item_id
      hash['fields'] = fields
      hash['filter'] = filter
      hash['except'] = except
      hash
    end
  end
end