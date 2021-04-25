# バブルソート
# バブルソートは、隣接する要素の順序が間違っている場合に繰り返し交換することで機能する
# 最も単純なソートアルゴリズムです。リストを複数回通過し、隣接するアイテムを比較して、
# 故障しているアイテムを交換します。リストを通過するたびに、次に大きい値が適切な場所に配置されます

def bubbleSort (array, size)
  array.each do
    for j in 0 .. (size -2)
      if array[j] > array[j + 1]
        temp = array[j]
        array[j] = array[j + 1]
        array[j + 1] = temp
      end
    end
  end
  array
end


array = [0,9,1,4,2]

print(array)

bubbleSort(array, array.length)

puts("\nソート後: ")

print(array)