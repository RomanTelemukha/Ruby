def even?(number)
  number % 2 == 0
end

def adult?(age)
  age >= 18
end

def positive?(number)
  number > 0
end

puts "Чи є число 4 парним? #{even?(4)}"
puts "Чи є число 7 парним? #{even?(7)}"
puts "Чи повнолітня особа віком 16 років? #{adult?(16)}"
puts "Чи повнолітня особа віком 21 рік? #{adult?(21)}"
puts "Чи є число 10 додатним? #{positive?(10)}"
puts "Чи є число -5 додатним? #{positive?(-5)}"
