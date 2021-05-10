# Selection Sort
# 選択ソートアルゴリズムは、ソートされていない部分から最小要素（昇順を考慮）を
# 繰り返し見つけて先頭に配置することにより、配列をソートします
# アルゴリズムは、特定の配列に2つのサブ配列を維持します


def Selection_Sort (array)
  for i in (0 .. array.length - 2)
    min_index = i
    for j in (i + 1 .. array.length - 1)
      if (array[j] < array[min_index])
        min_index = j
      end
    end
    if i != min_index     # 必要に応じてスワップ
      temp = array[min_index]
      array[min_index] = array[i]
      array[i] = temp
    end
  end
end

array = [0,9,2,1,3,5] # ハードコード配列

puts("ソート前の配列: ")

print(array)

puts("\nソート後の配列: ")

Selection_Sort(array)

print(array)

#OutPut

# ソート前の配列:
# [0, 9, 2, 1, 3, 5]
# ソート後の配列:
# [0, 1, 2, 3, 5, 9]