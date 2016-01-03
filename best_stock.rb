def stock_picker costs
  best_profit = 0
  buy_day = 0
  sell_day = -1
  costs.each_with_index do |buy_cost, buy_index|
    costs[buy_index..-1].each_with_index do |sell_cost, sell_index|
      if sell_cost - buy_cost > best_profit
        best_profit = sell_cost - buy_cost
        buy_day = buy_index
        sell_day = sell_index + 1
      end
    end
  end
  [buy_day,sell_day]
end 

p stock_picker [17,3,6,9,15,8,6,1,10]