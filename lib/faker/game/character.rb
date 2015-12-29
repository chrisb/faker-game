module Faker
  module Game
    module Character
      NEUTRAL_PREFIXES    = %w(byr dy mi beo tyr)
      NEUTRAL_POSTFIXES   = %w(dren bor dun mar del lad ar gren grad gard born bar bel wren rend mel dar den ful ren)
      NEUTRAL_ANIMALS     = %w(wolf dragon bear beast)
      NEUTRAL_NATURE      = %w(cliff storm wind sand earth)
      NEUTRAL_NOUNS       = CharacterTitle::NEUTRAL_PROFESSIONS + NEUTRAL_NATURE + NEUTRAL_ANIMALS

      class << self
        def first_name
          (NEUTRAL_PREFIXES.sample + NEUTRAL_POSTFIXES.sample)
        end

        def name
          "#{first_name} #{surname}".titleize
        end

        def object
          NEUTRAL_NOUNS.sample + (NEUTRAL_NOUNS + [nil]).sample.to_s
        end

        def prefix
          (NEUTRAL_PREFIXES + [nil]).sample.to_s
        end

        def surname
          (prefix + object + NEUTRAL_POSTFIXES.sample)
        end

        def name_with_title
          "#{name}#{separator}#{CharacterTitle.send %w(evil neutral good).sample}"
        end

        private

        def word_separator
          ['', '-', ' '].sample
        end

        def separator(include_none = false)
          [', ', ' - ', ': '].concat(include_none ? [''] : []).sample
        end
      end
    end
  end
end
