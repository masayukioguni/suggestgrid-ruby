# This file was automatically generated for SuggestGrid by APIMATIC BETA v2.0 on 12/25/2015

module SuggestGrid
  class TypeRequestBody

    # Could be "explicit" or "implicit"
    # The default is "implicit".
    # @return [String]
    attr_accessor :rating

    
    def method_missing (method_name)
      puts "there's no method called '#{method_name}'"
    end

    # Creates JSON of the curent object  
    def to_json
      hash = self.key_map()
      hash.to_json
    end

    # Defines the key map for json serialization  
    def key_map
      hash = {}
      hash['rating'] = self.rating
      hash
    end

  end
end