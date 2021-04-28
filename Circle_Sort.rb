# サークルソート
# 円の並べ替えは、整数の配列に同心円を描くことで実行できます
# 円で、最初の要素を最後の要素と比較して並べ替え、2番目の要素を最後から2番目の要素と比較して並べ替えます
# 要素が間違った順序で見つかった場合、それらは交換されます。このプロセスは再帰的に実行され、
# 配列がサブ配列に分割され、並べ替えられた要素のペアが取得されるまで上記のプロセスが繰り返されます

class Array
  def circle_sort!
    while _circle_sort!(0, size - 1) > 0
    end
    self
  end

  private
  def _circle_sort!(lower, higher, swapping = 0)
    return swapping if lower == higher
    low, high = lower, higher
    middle = (lower + higher) / 2

    while lower < higher
      if self[lower] > self[higher]
          self[lower], self[higher] = self[higher], self[lower]
          swapping += 1
      end
      lower += 1
      higher -= 1
    end

      if lower == higher && self[lower] > self[higher+1]
        self[lower], self[higher + 1] = self[higher + 1], self[lower]
        swapping += 1
      end

      swapping + _circle_sort!(low, middle) + _circle_sort!(middle + 1, high)
  end
end

puts "配列のサイズを入力してください:"
size = gets.to_i
puts
input_array = Array.new(size)

counter = 0

while(counter != size)
  puts "インデックス#{counter}に値を入力してください:"
  input_array[counter] = gets.to_i
  counter += 1
end

puts

puts "入力配列: #{input_array}"
puts "サークルソート: #{input_array.circle_sort!}"