class User
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

  alias name full_name
end

user = User.new("Тарас", "Шевченко")
puts "Метод full_name: #{user.full_name}"
puts "Псевдонім name: #{user.name}"

def hello(name)
  "Привіт, #{name}!"
end

alias privit hello

puts hello("Максим")
puts privit("Максим")
