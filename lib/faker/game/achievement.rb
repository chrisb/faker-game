module Faker
  module Game
    module Achievement
      class << self

        def assassination_verb
          %w(Kill Assassinate Beat Destroy Overcome Vanqiush).sample
        end

        def assassination
          "#{assassination_verb} #{CharacterTitle.evil_proper}"
        end

        def earn_verb
          %w(Earn Discover Harvest Gather).sample
        end

        def earn
          "#{earn_verb} #{rand(200) * 10} #{Faker::Game.currency.pluralize}"
        end

        def discover_verb
          %w(Discover Find Uncover Reach).sample
        end

        def discover
          "#{discover_verb} #{Place.name}"
        end

        def kill_verb
          %w(Kill).sample
        end

        def kill_enemies
          "#{kill_verb} #{rand(200) * 10} #{Faker::Game.enemy.pluralize}"
        end

        def name
          send %w(assassination earn discover kill_enemies).sample
        end
      end
    end
  end
end
