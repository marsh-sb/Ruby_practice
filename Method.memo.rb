sk8_name1 = gets
puts sk8_name1 + '3'
# 改行を削除
puts sk8_name1.chomp + '5'

number = gets.chomp!
puts number.to_i + 10

# chomp!は文字列の最後に改行が入っている場合などで改行を取り除くメソッド


sk8_name2 = 'Nyjah Huston'

# 指定文字列の中に、nが含まれる個数
puts sk8_name2.count('n')
# 指定文字列の中に、oが含まれる個数
puts sk8_name2.count('o')
# 指定文字列の中に、xが含まれる個数
puts sk8_name2.count('x')

# countはある文字列に含まれる特定の文字列の個数を数えることができるメソッド


sk8_name3='Paul Rodriguez'

puts sk8_name3.slice(3)
puts sk8_name3.slice(0..sk8_name3.length-3)
puts sk8_name3.slice(0...sk8_name3.length-3)
puts sk8_name3.slice(2..5)
puts sk8_name3.slice(2...5)

# sliceは文字列を部分的に抽出するメソッド
# ..と...で、処理が違うので注意
# slice(開始位置..終了位置)
# slice(開始位置...終了位置)
# ⇒開始位置を含む終了位置-開始位置の長さの文字列が抽出
# slice(位置)：指定した位置の文字列を抽出