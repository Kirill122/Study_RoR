puts "Введите имя:"
user_name = gets.chomp

puts "теперь введите рост:"
height = gets.chomp.to_f

formula = (height-100)*1.15

if formula<0
  puts "#{user_name}, ваш вес уже оптимальный"
  else
    puts "#{user_name}, ваш вес неоптимальный, пора начать худеть"
  end