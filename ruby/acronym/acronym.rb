class Acronym

  def self.abbreviate(phrase)
    phrase_arr = phrase.split(/[^A-Za-z]/)
    phrase_arr.map { |word| word.chr }.join.gsub(/[^0-9a-z]/i, "").upcase
  end

end