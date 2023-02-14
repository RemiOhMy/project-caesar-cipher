def stock_picker(prices)
  ideal = [0, 0]
  profit = 0

  # Iterate through every day, and compare with every day after the current day to check for profit combinations
  # and then assign the indices of that profit combo to ideal
  prices.each_with_index do |_price, index|
    sec_index = index + 1
    while sec_index < prices.length
      current = prices[sec_index] - prices[index]
      if profit < current
        ideal[0] = index
        ideal[1] = sec_index
        profit = current
      end
      sec_index += 1
    end
  end

  ideal
end
