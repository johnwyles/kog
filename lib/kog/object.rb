module OpenGraph
  class Object
    # Define the types specified in the OpenGraph protocol
    STANDARD_TYPES = {
      'activity'     => %w(activity sport),
      'business'     => %w(bar company cafe hotel restaurant),
      'group'        => %w(cause sports_league sports_team),
      'organization' => %w(band government non_profit school university),
      'person'       => %w(actor athlete author director musician politician public_figure),
      'place'        => %w(city country landmark state_province),
      'product'      => %w(album book drink food game movie product song tv_show),
      'website'      => %w(blog website)
    }

    # Create methods for each attribute (including the soon-to-be-deprecated "type" attribute)
    def initialize(hash)
      hash.each do |key, value|
        unless (self.respond_to?(key) && key != 'type')
          # Assign an instance variable to the value
          instance_variable_set("@#{key}", value)

          # Define accessors to the instance variable
          object = class << self; self; end
          object.send(:define_method, key) { hash[key] }
          object.send(:define_method, "#{key}?") { |type| hash[key] == type }
        end
      end
    end

    # The schema this object belongs to
    def schema
      STANDARD_TYPES.each_pair do |schema, types|
        return schema if types.include?(self.type)
      end
      return nil
    end
  end
end
