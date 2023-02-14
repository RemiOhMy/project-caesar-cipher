require './lib/stock_picker'

describe '#stock_picker' do
  it 'gives the optimal pair of days for profit' do
    expect(stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eql([1, 4])
  end
end
