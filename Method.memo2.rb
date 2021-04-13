hoge = gets.split.map(&:to_i)
p hoge
p hoge[0] + 1

fuga = gets.split
p fuga
p fuga[0] + 1

# 標準入力を整数型にして、配列に格納する
# 整数型にしないと、計算処理でエラーになる



#1行目
p gets.split.map(&:to_i)

#2行目以降読み込み
array_of_input = []
while s = gets
  array_of_input.push(s.split.map(&:to_i))
end
p array_of_input

# データ部分の読み込み
# 最初の1行と、2行目以降だとデータの構造が違うことがあるので
# 2行目以降の読み込みをする時に書くコード