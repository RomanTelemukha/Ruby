def print_elements(array)
  array.each_with_index do |item, index|
    puts "Елемент [#{index}]: #{item}"
  end
end

def calculate_sum(*numbers)
  numbers.sum
end

fruits = ["Яблуко", "Банан", "Апельсин"]
print_elements(fruits)

puts "Сума списку чисел: #{calculate_sum(5, 10, 15, 20)}"
numbers_array = [1, 2, 3, 4, 5]
puts "Сума масиву зі splat-оператором: #{calculate_sum(*numbers_array)}"
