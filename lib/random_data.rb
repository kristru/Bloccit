#define this as a standalone library
module RandomData
  def self.random_paragraph
    sentences = []
#create 4 to 6 random sentences and append them to sentences
    rand(4..6).times do
      sentences << random_sentence
    end

    sentences.join(' ')
  end

  def self.random_sentence
    strings = []
    rand(3..8).times do
      strings << random_word
    end

    sentence = strings.join(' ')
    sentence.capitalize << "."
  end

  def self.random_question
    strings = []
    rand(3..8).times do
      strings << random_word
    end

    sentence = strings.join(' ')
    sentence.capitalize << "?"
  end

  def self.random_word
    letters = ('a'..'z').to_a
    letters.shuffle!
    letters[0, rand(3..8)].join
  end

  def self.random_price
    rand(5..30).to_s
  end
end
