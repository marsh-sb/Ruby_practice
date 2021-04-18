# 入力された２つの数の最大公約数を(GCD)求める


def gcd(x, y)
  if (x == 0)
      return y
  else
      return gcd(y % x, x)
  end
end

puts "１つ目の数字を入力して下さい:"
x = gets.to_i

puts "２つ目の数字を入力して下さい:"
y = gets.to_i

puts "入力された数字は #{x} と #{y} で、最大公約数は #{gcd(x, y)} です！"