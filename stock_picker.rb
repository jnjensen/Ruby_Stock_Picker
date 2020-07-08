def stock_picker (range)
    profit = 0
    buy_day = 0
    sell_day = 0

    0.upto((range.length - 2)) do |idx1|
        1.upto((range.length - 1)) do |idx2|
            if (idx1 != idx2) && (idx1 < idx2)
                total = (range[idx2] - range[idx1])
                if total > profit
                    profit = total
                    buy_day = idx1
                    sell_day = idx2
                end
            end
        end
    end

    return [buy_day, sell_day]
end

print stock_picker([17,3,6,9,15,8,6,1,10])

#=> [1,4]  # for a profit of $15 - $3 == $12