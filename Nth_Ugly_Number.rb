# ugly Numberかどうかをチェックする機能
def Is_Ugly(x)
  m = 1
  while x != 1
    if x % 2 == 0
      x = x/2
    elsif x % 3 == 0
      x = x/3
    elsif x % 5 == 0
      x = x/5
    else
      m = 0
      break
    end
  end
  return m
end

print("N番目の数字を入力してください")
# N番目の番号のユーザー入力
n = gets.chomp.to_i
i = 1

# N番目のugly Numberを見つける
while n != 1
  if Is_Ugly(i+1) == 1
      n = n-1
  end
  i = i+1
end