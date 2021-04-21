# 二分探索機能はソートされた配列内のターゲット値の位置を見つける検索アルゴリズムです

def binarySearch(array, searchVariable, size)
  left = 0
  right = size - 1

  while left <= right

    middle = left + (right - left) / 2

    if array[middle] == searchVariable
      return middle

    elsif searchVariable < array[middle]
      right = middle - 1

    else
      left = middle + 1

    end

  end

  -1
end

# ハードコードされた配列
array = [1, 2, 3, 4, 5]

# 配列内で1を検索しています
if binarySearch(array, 1, array.length) != -1
  puts('1が見つかりました')
else
  puts('1が見つかりません')
end
# 見つかった出力要素を提供します

# 配列で0を検索しています
if binarySearch(array, 0, array.length) != -1
  puts('0が見つかりました')
else
  puts('0が見つかりません')
end
# 出力要素が見つかりません
