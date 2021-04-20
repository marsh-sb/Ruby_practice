# 平均、分散、標準偏差の計算

puts "配列の要素数を入力してください :"
num1 = gets.to_i
a = Array.new(num1)
puts "配列を入力してください: "

counter = 0
while counter < num1
  a[counter] = gets.chomp().to_i
  counter += 1
end

mean = 0.0

a.each { |element| mean += element }

mean = mean / num1;

sum = 0.0

a.each { |element| sum = sum + (element - mean) ** 2}


# 分散は値と平均との差の2乗の平均です
v = sum / num1
# 標準偏差は対象データの値と平均との間にある差を2乗したものを合計した上で、データの総数で割った正の平方根から求められます
sd = v ** (1 / 2.0)

puts ("平均 = " + mean.to_s)
puts ("分散 = " + v.to_s)
puts ("標準偏差 = " + sd.to_s)