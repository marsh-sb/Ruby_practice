# 三元検索は、配列内の特定の値の位置を検索するために使用される検索手法です。
# 三元検索は分割統治アルゴリズムです。
# 配列を並べ替える必要があります（要素を検索します）。
# 配列は3つの部分に分割され、要素がどの部分に存在するかを判別します。
# この検索で​​は、各反復の後、配列の1/3の部分を無視し、残りの2/3に対して同じ操作を繰り返します。
# 時間計算量：O（log3 n）
# スペースの複雑さ：O（1）


def ternarySearch(l, r, key, ar) # 三元検索を実行する関数

  if (r >= l)
    # mid1とmid2を見つける
    mid1 = l + (r - l) / 3
    mid2 = r - (r - l) / 3
    if ar[mid1] == key # キーがmid1と等しいかどうかを確認します
      mid1
    elsif ar[mid2] == key # キーがmid2と等しいかどうかを確認します
      mid2
    # キーは中央に存在しないため、どの領域に存在するかを確認してください
    # 次に、その領域で検索操作を繰り返します
    elsif key < ar[mid1]
      ternarySearch(l, mid1 - 1, key, ar)
    elsif (key > ar[mid2])
      ternarySearch(mid2 + 1, r, key, ar)
    else
      ternarySearch(mid1 + 1, mid2 - 1, key, ar)
    end
  end
end

n = gets.to_i # 配列の長さ
arr = []
while n > 0
  num = gets.chomp.to_i
  arr.push(num)
  n = n - 1
end
number = gets.to_i # インデックスを検索する番号
puts "#{number} のインデックスは #{ternarySearch(0, arr.length - 1, number, arr)}です"