require './lib/substrings'

describe '#substrings' do
  it 'calculates the amount of times a word shows up in a given string' do
    dictionary = %w[below down go going horn how howdy it i low own part partner sit]
    expect(substrings("Howdy partner, sit down! How's it going?",
                      dictionary)).to eql({ 'down' => 1, 'go' => 1, 'going' => 1, 'it' => 2, 'i' => 3, 'own' => 1, 'part' => 1,
                                            'partner' => 1, 'sit' => 1 })
  end
end
