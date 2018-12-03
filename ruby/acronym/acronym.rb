class Acronym
  def self.abbreviate(phrase)
    split_phrase = phrase.split(/\W+/)
    first_letter = split_phrase.map do |word|
      word[0]
    end
    first_letter.join("").upcase
  end
end
