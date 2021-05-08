# アルゴリズム
# すでにソートされているリスト内の要素が1つしかない場合は、を返します
# リストを分割できなくなるまで、リストを再帰的に2つに分割します
# 小さいリストをソートされた順序で新しいリストにマージします


$temp = []
def conquer_merge(array, left, right, mid)
    #temp = [None] * len(array)
    i = left
    j = mid + 1
    k = left

    while i <= mid and j <= right
        if array[i] <= array[j]
            $temp[k] = array[i]
            i += 1
        else
            $temp[k] = array[j]
            j += 1
        end
        k += 1
    end
    while i <= mid
        $temp[k] = array[i]
        i += 1
        k += 1
    end
    while j <= right
        $temp[k] = array[j]
        j += 1
        k += 1
    end
    while left <= right
        array[left] = $temp[left]
        left += 1
    end
end

# 配列を半分に分割する
def divide(array, left, right)
    if left < right
        mid = (left + (right - left) / 2).to_i

        divide(array, left, mid)
        divide(array, mid + 1, right)

        conquer_merge(array, left, right, mid)
    end
end

def Merge_Sort(array)
    $temp = [0] * array.length
    divide(array, 0, array.length - 1)
    $temp.clear
end

array = [2, 4, 3, 1, 6, 8, 4]

Merge_Sort(array)

print(array)

# 出力結果
# 1 2 3 4 4 6 8