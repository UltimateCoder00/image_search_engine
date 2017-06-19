class RandomWord
  attr_reader :result

  Word = %w[man, mountain, state, ocean, country, building, cat, airline, wealth,
            happiness, pride, fear, religion, bird, book, phone, rice, snow, water]

  def initialize
    @result = Word.sample
  end

end
