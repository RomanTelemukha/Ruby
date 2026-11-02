def greet(name = "Гість", greeting = "Привіт")
  "#{greeting}, #{name}!"
end

puts greet
puts greet("Олег")
puts greet("Анна", "Доброго дня")

def calculate(a, b)
  a + b
end

puts calculate(5, 3)

def calculate(a, b)
  a * b
end

puts calculate(5, 3)
