def bubble_sort(array)
  # Optimized so I can loop through the second part of the sort less amount of times (minus i), as a full iteration of the bubble sort guarantees that the value at index - i (i being the number of iterations) is correct
  (array.length - 1).times do |i|
    (array.length - 1 - i).times do |a|
      next unless array[a] > array[a + 1]

      temp = array[a]
      array[a] = array[a + 1]
      array[a + 1] = temp
    end
  end

  array
end
