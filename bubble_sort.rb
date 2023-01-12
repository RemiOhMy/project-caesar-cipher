def bubble_sort(array)

    #Optimized so I can loop through the second part of the sort less amount of times (minus i), as a full iteration of the bubble sort guarantees that the value at index - i (i being the number of iterations) is correct
    (array.length - 1).times do |i|
        (array.length - 1 - i).times do |a|
            if (array[a] > array[a + 1])
                temp = array[a]
                array[a] = array[a + 1]
                array[a + 1] = temp
            end
        end
    end

    array

end

p bubble_sort([4,3,78,2,0,2])

p bubble_sort([10,9,8,7,6,5,4,3,2,1,0])