require './lib/bubble_sort'

describe '#bubble_sort' do
  it 'sorts a given array of integers from smallest to largest' do
    expect(bubble_sort([5, 3, 1, 0])).to eql([0, 1, 3, 5])
  end

  it 'sorts a given array of floats' do
    expect(bubble_sort([0.5, 5.5, 10.2, 0.01])).to eql([0.01, 0.5, 5.5, 10.2])
  end

  it 'sorts a given array of strings' do
    expect(bubble_sort(%w[hi apple zoo])).to eql(%w[apple hi zoo])
  end
end
