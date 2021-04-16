# "aiueo"
# =>"oeuia"

# 文字列を逆から出力されるようにする
# ただし、reverseメソッドは使わない


def reverse_str(str)
  array = str.split("")          #与えられた文字列を配列に一文字ずつ入れる
  ary_count = array.length       #配列の要素の数を数える

  ary_count.times do |i|         #配列の要素の数だけ繰り返し出力する
    print array[ary_count - i]   #1周目はi=1になる
  end

  puts array[0]                  #最後の文字だけ出力されないので、付け足す
end
str = "aiueo"
reverse_str(str)                 #メソッドを呼び出す