# INSERTION SORT
# 挿入ソートは、一度に1つのアイテムを並べ替えた最終的な配列（またはリスト）を作成する単純なソートアルゴリズムです
# 大きなリストでは、クイックソート、ヒープソート、マージソートなどのより高度なアルゴリズムよりも効率がはるかに低くなります


# 挿入ソートの機能
def insertionSort (array)
  for i in 1 .. array.length - 1
    temp = array[i]                 # キー値を格納する
    j = i - 1
    while j > 0 and array[j] > temp # キーと比較し、それに応じて交換します
      array[j+1] = array[j]
      j = j - 1
    end
    array[j + 1] = temp               # 最終スワップ
  end
end

# ハードコードされた配列
array = [0,9,1,4,2]

# 配列の事前ソート
print(array)

puts("\nソート後:\n")

insertionSort(array)

# ソートされた配列
print(array)