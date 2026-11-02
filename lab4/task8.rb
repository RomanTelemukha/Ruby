def step_info
  puts "Початок кроку"
  yield if block_given?
  puts "Кінець кроку"
end

def calculate(a, b)
  if block_given?
    yield(a, b)
  else
    puts "Блок для обчислення не передано"
  end
end

step_info do
  puts "Виконується дія в блоці без аргументів"
end

puts

calculate(10, 4) do |x, y|
  puts "Результат додавання: #{x + y}"
end

calculate(10, 4) do |x, y|
  puts "Результат множення: #{x * y}"
end

calculate(10, 4)
