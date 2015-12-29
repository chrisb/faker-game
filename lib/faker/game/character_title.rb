module Faker
  module Game
    module CharacterTitle
      EVIL_BODY_PARTS_SINGULAR    = %w(anus blood flesh skin fat death eye sight)
      EVIL_BODY_PARTS             = %w(intestine colon gonad skull leg arm body head gut beast heart liver)
      EVIL_VIOLENT_VERBS_AS_NOUNS = %w(vommitter cooker roaster punisher mutalator disfigurer clawer disembowler crusher masher ravisher banisher killer grasper tearer flayer eater ripper impaler chewer sucker severer wrencher sapper reamer walker feaster devourer destroyer tormentor defiler mincer)
      EVIL_ADJECTIVES             = %w(evil dark rotting putrid forgotten terrible horrible nasty sickening putrifying banished outlawed)
      EVIL_NOUNS                  = %w(scourage terror horror ghoul ghost beast outlaw criminal demon)
      GOOD_NOUNS                  = %w(light wonder prosperity goodness truth)
      GOOD_VERBS_AS_NOUNS         = %w(bringer restorer bearer guardian savior protector)
      GOOD_ANTI_VERBS_AS_NOUNS    = %w(vanquisher slayer destroyer cleanser healer remover)
      NEUTRAL_PROFESSIONS         = %w(guard hunter smith bard fletcher)
      NEUTRAL_ADJECTIVES          = %w(stalwart honest faithful haggard tireless)

      class << self
        def evil_proper
          "the #{evil_base}"
        end

        def evil_with_qualifier
          "#{send %w(evil_base evil_proper).sample}, #{evil_qualifier}"
        end

        def evil
          send %w(evil_base evil_proper evil_with_qualifier).sample
        end

        def neutral_proper
          "the #{neutral_base}"
        end

        def neutral_with_adjective
          "#{send %w(neutral_base neutral_proper).sample} #{NEUTRAL_ADJECTIVES.sample}"
        end

        def neutral
          send %w(neutral_base neutral_proper neutral_with_adjective).sample
        end

        def good_with_qualifier
          "#{good_base} #{good_qualifier}"
        end

        def good_proper
          "the #{good_base}"
        end

        def good
          send %w(good_base good_proper good_with_qualifier).sample
        end

        private

        def evil_base
          "#{(EVIL_ADJECTIVES + [nil]).sample} #{evil_descriptor}"
        end

        def neutral_base
          "#{NEUTRAL_PROFESSIONS.sample} of #{Place.name}"
        end

        def evil_qualifier
          "#{['the ', nil].sample}#{EVIL_NOUNS.sample} of #{Place.name}"
        end

        def good_qualifier
          "#{['the ', nil].sample}#{GOOD_ANTI_VERBS_AS_NOUNS.sample} of #{EVIL_NOUNS.sample.pluralize}"
        end

        def good_base
          "#{GOOD_NOUNS.sample}#{['-', nil].sample}#{GOOD_VERBS_AS_NOUNS.sample}"
        end

        def evil_descriptor
          body_part = (EVIL_BODY_PARTS_SINGULAR + EVIL_BODY_PARTS).sample
          singular  = EVIL_BODY_PARTS_SINGULAR.include? body_part

          !singular && rand(2) == 1 ?
            "#{EVIL_VIOLENT_VERBS_AS_NOUNS.sample} of #{body_part.pluralize}" :
            "#{body_part}#{word_separator}#{EVIL_VIOLENT_VERBS_AS_NOUNS.sample}"
        end

        def word_separator
          ['', '-', ' '].sample
        end
      end
    end
  end
end
