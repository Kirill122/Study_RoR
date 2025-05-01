puts "Определим свойства треугольника"
puts "Введите длину 1-ой стороны треугольника"
a = gets.chomp.to_f
puts "Введите длину 2-ой стороны треугольника"
b = gets.chomp.to_f
puts "Введите длину 3-ей стороны треугольника"
c = gets.chomp.to_f

aa,bb,cc = [a*a, b*b, c*c].sort.map {|x| x.round(2)}

return puts "не существует" unless a + b > c && a + c > b && b + c > a
return puts "равносторонний" if a == b && b == c 

properties = 0
properties += 1 if aa + bb == cc
properties += 2 if a == b || b == c || c == a

case properties
when 0
  puts "Не прямоугольный"
when 1
  puts "Прямоугольный"
when 2
  puts "Не прямоугольный, равнобедренный"
when 3
  puts "Прямоугольный, равнобедренный"
end