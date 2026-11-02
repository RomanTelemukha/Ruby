simple_proc = Proc.new do
  puts "Proc без аргументів успішно виконано"
end
simple_proc.call

person_proc = Proc.new do |name, age|
  puts "Ім'я: #{name.inspect}, Вік: #{age.inspect}"
end

puts "Передано точну кількість аргументів (2):"
person_proc.call("Олег", 20)

puts "Передано менше аргументів (1):"
person_proc.call("Олег")

puts "Передано більше аргументів (3):"
person_proc.call("Олег", 20, "Київ")

def test_proc_return
  my_proc = Proc.new do
    return "Значення повернене напряму з Proc (перериває метод)"
  end

  my_proc.call
  "Значення з кінця методу (цей рядок не виконається)"
end

puts "\nРезультат роботи методу з Proc return:"
puts test_proc_return
