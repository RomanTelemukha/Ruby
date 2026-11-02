class Point
  attr_reader :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def +(other)
    Point.new(@x + other.x, @y + other.y)
  end

  def ==(other)
    @x == other.x && @y == other.y
  end
end

class Product
  def initialize(title, price)
    @title = title
    @price = price
  end

  def price
    @price
  end

  def price=(new_price)
    @price = new_price
  end

  def title
    @title
  end
end

p1 = Point.new(3, 4)
p2 = Point.new(1, 2)
p3 = p1 + p2

puts "p1 + p2 = (#{p3.x}, #{p3.y})"
puts "p1 == p2: #{p1 == p2}"
puts "p1 == Point.new(3, 4): #{p1 == Point.new(3, 4)}"

product = Product.new("Ноутбук", 25000)
puts "Товар: #{product.title}, ціна: #{product.price} грн"

product.price = 23500
puts "Нова ціна товару: #{product.price} грн"
