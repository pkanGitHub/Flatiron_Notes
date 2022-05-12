def dash
    puts "========================"
end

array = [7, 3, 1, 2, 6, 5]

array.sort do |a, b|
    if a == b
        0
    elsif a < b
        -1
    elsif a > b
        1
    end
end

array.each do |num|
    puts num 
end

dash

dishes = ["steak", "apple pie", "vegetable soup"]

dishes.sort do |a, b|
    a <=> b   
end
