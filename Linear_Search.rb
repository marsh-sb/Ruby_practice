# # 線形検索（シーケンシャル検索とも呼ばれます）は、配列内のターゲット値を見つけるための方法です
# ターゲット値が見つかるまで、またはすべての要素がチェックされるまで、配列の各要素を順番にチェックします
# 線形検索は最悪の線形時間で実行され、最大n回の比較を行います。ここでnはリストの長さです


def LinearSearch (array, searchedValue)
  array.each do |value|
    if value == searchedValue
      return "値が見つかりました"
    end
  end
  return "値が見つかりません"
end

# ハードコードされた配列
array = [9,1,2,0,3]

print(array)

# 0を検索
puts("\n配列で0を検索しています: ")
print(LinearSearch(array,0))

# 4を検索
puts("\n配列で4を検索しています: ")
print(LinearSearch(array,4))


# 出力結果
# [9, 1, 2, 0, 3]
# 配列で0を検索しています:
# 値が見つかりました
# 配列で4を検索しています:
# 値が見つかりません