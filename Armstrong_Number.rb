# n乗の和の桁数に等しいnビットの正の整数ならば、番号がアームストロングの番号と呼ばれています
# 例えば、1 ^ 3 ^ 3 + 3 + 5 = 153 ^ 3

# 番号の順序を計算するには
def order(num)
  # 数値を格納する変数
  count = 0
  while (num != 0)
    count = count + 1
    num = num / 10
  end
  return count
end

# 与えられた数がアームストロング数であるかどうかをチェックする機能
def Armstrong(num)
  count = order(num)
  temp = num
  sum = 0
  boolean = false
  while (temp != 0)
    d = temp % 10
    sum = sum + d ** count
    temp = temp / 10
  end
  return num == sum
end


num = gets.chomp.to_i
print(Armstrong(num))