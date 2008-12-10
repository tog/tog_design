require 'faker'
include Faker

module Nanoc::Helpers

  module Faker
    def fake_sentence
      Lorem.sentence
    end
    def fake_paragraph(paragraphs_number=1)
      Lorem.paragraphs paragraphs_number
    end
    def fake_company
      Company.name
    end
    def fake_name
      Name.name
    end
    def fake_tags(tags_number=1)
      Lorem.words tags_number
    end
  end

end
