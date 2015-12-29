module Faker
  module Game
    module Place
      class << self
        ADJECTIVES = %w(northern southern western eastern cold wintery snowy rugged dark crimson red bloody haunted)
        MODIFIERS  = %w(world land realm)
        PLACES     = %w(winter plains south east north west caves caverns towers)
        PLACES_NEEDING_MODIFIER = %w(under over hinter grass water wet)

        def name
          [name_with_modifier,
           name_with_adjective,
           simple_name,
           proper_name].sample
        end

        def name_with_modifier
          PLACES_NEEDING_MODIFIER.sample + MODIFIERS.sample
        end

        def name_with_adjective
          "#{ADJECTIVES.sample} #{simple_name}"
        end

        def simple_name
          PLACES.sample
        end

        def proper_name
          "the #{[name_with_modifier, name_with_adjective, simple_name].sample}".titleize
        end
      end
    end
  end
end
