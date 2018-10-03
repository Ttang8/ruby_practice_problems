def self_dividing_number(lower,upper)
  ans = []
  range = (lower..upper).to_a
  range.each do |num|
    if self_divide_check(num)
      ans << num
    end
  end
  ans
end

def self_divide_check(num)
  string = num.to_s
  string.each_char do |ch|
    if ch.to_i == 0 || num % ch.to_i != 0
      return false
    end
  end
  true
end

puts self_dividing_number(1,100)

puts "self_dividing_number"
puts "----------------------"
puts self_dividing_number(1,22) == [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15, 22]
puts "----------------------\n\n"
