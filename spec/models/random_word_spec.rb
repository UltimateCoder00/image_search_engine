require './app/models/random_word'

describe RandomWord do
  subject(:random_word) {described_class.new}

  it "#result" do
    words_array = %w[man, mountain, state, ocean, country, building, cat, airline, wealth,
              happiness, pride, fear, religion, bird, book, phone, rice, snow, water]

    expect(words_array.count).to eq 19
    expect(words_array.delete(random_word.result)).to eq random_word.result
    expect(words_array.count).to eq 18
  end
end
