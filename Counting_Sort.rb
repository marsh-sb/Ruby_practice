# 指定された入力をソートする関数

def counting_sort(input , n)
  max = input.max # 配列の最大値
  min = input.min # 配列の最小値
  arr = []
  # 配列要素をゼロとして初期化する
  for i in min..max
    arr.push(0)
  end
 # 各個別値のストア数
  for i in input
    arr[i - min] = arr[i - min] + 1
  end
  # 出力配列内の入力値の実際の位置が含まれるように配列を変更する
  for i in 0..max - min - 1
    arr[i + 1] = arr[i + 1] + arr[i]
  end
  output = []
  for i in 0.. n - 1
    output.push(0)
  end
  # 入力配列とarrを使用して出力配列を埋める
  for i in input
    output[arr[i - min] - 1] = i
    arr[i - min] = arr[i - min] - 1
  end
  for i in output
    print(i.to_s + " ")
  end
end

input = [1,5,2,7,3,4,4,1,5]
n = input.length()
# 出力結果
counting_sort(input , n)