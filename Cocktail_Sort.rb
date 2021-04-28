# カクテルソート
# カクテルソートは、バブルソートのバリエーションです。
# バブルソートアルゴリズムは常に要素を左からトラバースし、最初の反復で最大の要素を正しい位置に移動し、
# 2番目の反復で2番目に大きい要素を移動します。シェーカーソートは、指定された配列を表示します


class Array 
  def cocktailSort!
    begin
        swap = false
        0.upto(length - 2) do |i|
            if self[i] > self[i + 1]
                self[i], self[i + 1] = self[i + 1], self[i]
                swap = true
            end
        end
        break unless swap

        swap = false
        (length - 2).downto(0) do |i|
            if self[i] > self[i + 1]
                self[i], self[i + 1] = self[i + 1], self[i]
                swap = true
            end
        end
    end while swap
    self
  end
end

# Taking User Input

puts "配列のサイズを入力してください： "
size = gets.to_i
puts
input_array = Array.new(size)

counter = 0

# Input array values using while loop

while(counter != size)
  puts "インデックス#{counter}に値を入力してください：: "
  input_array[counter] = gets.to_i
  counter += 1
end

puts 

puts "入力配列: #{input_array}"
print "カクテルソート: ", input_array.cocktailSort!
