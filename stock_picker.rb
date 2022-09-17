def stockPicker(prices)
    highestProfit = 0
    buyLowSellHigh = ""

    prices.each_with_index do |buy, buyDay|
        prices.each_with_index do |sell, sellDay|
            profit = sell - buy

            if profit > highestProfit && buyDay < sellDay
                highestProfit = profit
                buyLowSellHigh = "Buy day: #{buyDay}\nPrice: $#{prices[buyDay]}\n\nSell day: #{sellDay}\nPrice: $#{prices[sellDay]}"
            end
        end
    end

    puts buyLowSellHigh
    puts "\nProfit: $" + highestProfit.to_s
end

priceDays = [17,3,6,9,15,8,6,1,10]
puts stockPicker(priceDays)