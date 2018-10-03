def judge_circle(string)
  x = 0
  y = 0
  string.each_char do |ch|
    case ch
    when "R"
      x += 1
    when "L"
      x -= 1
    when "U"
      y += 1
    when "D"
      y -= 1
    end
  end
  x == 0 && y == 0
end

puts judge_circle("UD") == true
puts judge_circle("LL") == false
