# 配列内の最大数と次の最大数を見つける

puts "配列の要素数を入力してください:"
num = gets.to_i
arr = Array.new(num) 
puts "配列を入力してください: "

counter = 0
while counter < num
  arr[counter] = gets.chomp().to_i
  counter += 1
end

# sortメソッドを使用して配列を区分けする
arr = arr.sort

# 区分け後、一番大きい要素がMax、2番目に大きい要素がNextMaxになります
puts ("Max: " + arr[num-1].to_s)
if num > 1
  puts ("Next max: " + arr[num-2].to_s)
end