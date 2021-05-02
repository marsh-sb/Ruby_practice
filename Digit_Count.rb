#指定された数の桁数

puts "番号を入力してください : "
num = gets.chomp.to_i

temp = num
count = 0

if temp == 0
  count = 1
end

if temp < 0
  temp = temp * -1
end

#ループして桁数を決定する
while (temp > 0)
  count += 1
  temp = temp / 10
end

puts "指定された数値 #{num} には #{count} 桁が含まれています"