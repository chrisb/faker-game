require 'faker'

module Faker
  module Game
    class << self
      def franchise
        "#{enemy} #{verb_noun}"
      end

      def ability_measurement
        %w(Renown Mana XP Experience Power).sample
      end

      def currency
        %w(Credit Point Gem Orb)
      end

      def adjective
        %w(Gold Golden Bloodied Bloody Mighty Powerful Damaged Dark Black Silver Iron).sample
      end

      def noun
        %w(Power War Heart Darkness Soul Lost).sample
      end

      def hero
        %w(Soldier Hero Knight Savior Commander).sample
      end

      def verb_noun
        %w(Killer Destroyer Fighter Battler Vanquisher Hunter Commander Collector).sample
      end

      def enemy
        %w(Ghost Titan Banshee Witch Insurgent Thief Ghoul Monster Tango Terrorist).sample
      end

      def suffix
        (%w(II III IV V VI X SE HD Remastered 2 3 4) << nil).sample
      end

      def prefix
        "#{creator}'s #{franchise}"
      end

      def subtitle
        [ "The #{verb_noun} of #{enemy.pluralize}",
          "#{adjective} #{enemy.pluralize}",
          "#{adjective} #{hero}" ].sample
      end

      def name
        [ "The #{verb_noun} of #{enemy.pluralize}",
          "#{franchise} #{suffix}".strip,
          "#{enemy} #{verb_noun}",
          "#{adjective} #{hero}",
          franchise,
          "#{prefix}", nil ].sample || name_with_franchise
      end

      def name_with_franchise
        "#{creator}'s #{franchise} #{suffix}: #{subtitle}".squish
      end

      def creator
        "#{Faker::Name.first_name} #{Faker::Name.last_name}"
      end
    end
  end
end
