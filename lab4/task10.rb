simple_lambda = -> { puts "Lambda без аргументів успішно виконана" }
simple_lambda.call

person_lambda = ->(name, age) do
  puts "Ім'я: #{name}, Вік: #{age}"
end

puts "Передано точну кількість аргументів (2):"
person_lambda.call("Аліна", 19)

puts "\nСпроба передати менше аргументів (1):"
begin
  person_lambda.call("Аліна")
rescue ArgumentError => e
  puts "Перехоплено помилку: #{e.message}"
end

puts "\nСпроба передати більше аргументів (3):"
begin
  person_lambda.call("Аліна", 19, "зайвий аргумент")
rescue ArgumentError => e
  puts "Перехоплено помилку: #{e.message}"
end

def test_lambda_return
  my_lambda = -> { return "Значення з lambda" }

  result = my_lambda.call
  puts "Отримано з lambda: #{result}"
  "Значення з кінця методу (метод продовжив роботу)"
end

puts "\nРезультат роботи методу з Lambda return:"
puts test_lambda_return
