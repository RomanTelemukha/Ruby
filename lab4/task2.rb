def greet(name:, age: nil, city: "Unknown")
  puts "Ім'я: #{name}"
  puts "Вік: #{age ? age : 'не вказано'}"
  puts "Місто: #{city}"
  puts
end

greet(name: "Олександр")
greet(name: "Марія", age: 20)
greet(name: "Іван", age: 22, city: "Львів")
