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
# while s = getsで、標準入力の最後まで読み込むまで、1行を変数sに代入している



class Hoge
  def initialize(x, y, z)
      @x = x
      @y = y
      @z = z
  end

  def display
      p "x: " + @x.to_s
      p "y: " + @y.to_s
      p "z: " + @z.to_s
  end
end

x, y, z = gets.split.map(&:to_i)
hoge = Hoge.new(x, y, z)
hoge.display

# ヘッダー部分(最初の1行目)をインスタンス変数に格納して、その後の処理で使いやすくする
# ヘッダー部分は、仕様の根幹に関わる数値で、何回も参照する必要がでてくるので
# classを作って、インスタンス変数に格納して、インスタンスの中で呼び出せる様にする