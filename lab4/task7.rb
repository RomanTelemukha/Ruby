def repeat(times, &block)
  times.times do |i|
    block.call(i + 1)
  end
end

def process_number(value, &block)
  block.call(value)
end

repeat(3) do |number|
  puts "Повторення №#{number}"
end

result = process_number(7) do |n|
  n * 10
end
puts "Результат обробки числа: #{result}"
