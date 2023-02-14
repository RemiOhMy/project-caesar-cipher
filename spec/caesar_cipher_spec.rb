require './lib/caesar_cipher'

describe '#caesar_cipher' do
  it 'ciphers string shifted according to a provided integer' do
    expect(caesar_cipher('Wow', 10)).to eql('Gyg')
  end

  it 'ciphers string but ignores all non-alphanumeric characters' do
    expect(caesar_cipher('Is this correct, I wonder?', 5)).to eql('Nx ymnx htwwjhy, N btsijw?')
  end
end
