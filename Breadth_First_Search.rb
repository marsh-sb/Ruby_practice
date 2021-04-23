# 幅優先探索とは、木構造やグラフの探索を行うためのアルゴリズムです
# 始点となるノードから隣接するノードを探索し、そこからさらに隣接するノードにたいして
# 探索を繰り返して目的のノードを見つます
# 幅優先探索は全ノードを網羅的に探索していくため、しらみつぶしに調べていく方法とも言えます


def breadth_first_search(adj_matrix, source, destination)
  node_array = [source]
  path = []
  # 最初のノード配列は#{node_array}です。

  loop do
      curr_node = node_array.pop
      path << curr_node
      # puts "次にチェックするノードは#{curr_node}です"

      if curr_node.nil?
          puts '宛先ノードが見つかりません！'
          return false

      elsif curr_node == destination
          puts "宛先ノード#{curr_node}が見つかりました！"
          puts "ソースノード#{source}と宛先ノード#{destination}の間のパスは次のとおりです/n#{path}."
          return true

      end

      # puts "次の配列を反復処理します：#{adj_matrix [curr_node]}"
      children = (0..adj_matrix.length - 1).to_a.select do |i|
      # puts "値が#{adj_matrix [curr_node] [i]}であるインデックス#{i}をチェックしています"
      adj_matrix[curr_node][i] == 1

      end

      # puts "CHILD ARRAYが返されました：#{children}"
      node_array = children + node_array
      # puts "CHILD ARRAYを追加した後、NODE ARRAYは次のようになります：#{node_array}"

  end

end

# ユーザー入力を使用して隣接行列を定義する

puts "隣接行列のサイズを入力してください:"
size = gets.to_i

adj_matrix = Array.new(size) { [] }

i = 0
counter = 0

while(counter != size)
  i = 0
  puts "行#{counter + 1}の値を入力します: "
  while(i != size)
      adj_matrix[counter][i] = gets.to_i
      i += 1
  end
  counter += 1
end

# ソースノードと宛先ノードのユーザー入力

puts "ソースノードを入力してください: "
source = gets.to_i

puts "宛先ノードを入力してください: "
destination = gets.to_i

# 隣接する行列、ソース、および宛先を引数としてアルゴリズムに渡す

breadth_first_search(adj_matrix, source, destination)
