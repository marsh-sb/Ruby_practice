# 2つのソートされた配列をマージする

puts "配列1の要素数を入力します:"
num1 = gets.to_i
a = Array.new(num1)
puts "配列を入力してください:"

counter = 0
while counter < num1
  a[counter] = gets.chomp().to_i
  counter += 1
end

puts "配列2の要素数を入力します:"
num2 = gets.to_i
b = Array.new(num2)
puts "配列を入力して下さい:"

counter = 0
while counter < num2
  b[counter] = gets.chomp().to_i
  counter += 1
end


c = Array.new(num1 + num2)

i = 0
j = 0
k = 0


while i < num1 && j < num2
  if a[i] > b[j]
     c[k] = b[j]
     k = k + 1
     j = j + 1
  else
     c[k] = a[i]
     k = k + 1
     i = i + 1
  end
end

# 配列aの残りの要素をコピーする
while i < num1
  c[k] = a[i]
  k = k + 1
  i = i + 1
end

# 配列bの残りの要素をコピーする
while j < num2
  c[k] = b[j]
  k = k + 1
  j = j + 1
end

print("新しいマージされた配列: ")

i = 0
while i <= k
  puts c[i].to_s + ' '
  i += 1
end