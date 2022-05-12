
def pow(base_num, pow_num) # for positive exp
    result = 1
    pow_num.times do |index| # if pow_num is 5, we will loop thru 5 times
        result = result * base_num
    end
    return result
end

puts pow(5, 2)