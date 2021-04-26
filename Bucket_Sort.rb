# バケットソートは、配列の要素をいくつかのバケットに分散することによって機能するソートアルゴリズムです
# 次に、各バケットは、異なる並べ替えアルゴリズムを使用するか、
# バケット並べ替えアルゴリズムを再帰的に適用することにより、個別に並べ替えられます

# バケットソートの特徴は次のとおりです

# バケットソートは、入力が一様分布から引き出されることを前提としています
# 計算の複雑さの見積もりには、バケットの数が含まれます
# バケットソートは、要素がバケットに割り当てられる方法のため、通常はインデックスが値である配列を使用するため、非常に高速になる可能性があります
# これは、より多くの比較ソートよりも実行時間が犠牲になり、バケットに多くの補助メモリが必要になることを意味します

# アルゴリズム
# 空の配列を作成します
# 元の配列をループして、各オブジェクトを「バケット」に入れます
# 空でない各バケットを並べ替えます
# バケットを順番に確認してから、すべてのオブジェクトを元の配列に戻します


DEFAULT_BUCKET_SIZE = 5

def bucket_sort(input, bucket_size = DEFAULT_BUCKET_SIZE)
  print 'array is empty' if input.empty?

  array = input.split(' ').map(&:to_i)

  bucket_count = ((array.max - array.min) / bucket_size).floor + 1

  # バケットの作成
  buckets = []
  bucket_count.times {buckets.push [] }

  # バケットを満たす
  array.each do |item|
    buckets[((item - array.min) / bucket_size).floor].push(item)
  end

  # バケットを整理する
  buckets.each(&:sort!)

  buckets.flatten.join(' ')
end

puts '番号のリストを入力します(スペースで区切ります) : '
list = gets
puts 'ソートされたリストは : '
print bucket_sort(list)


# 出力 :
# 番号のリストを入力します(スペースで区切ります) :
# 7 9 5 4 1
# ソートされたリストは :
# 1 4 5 7 9