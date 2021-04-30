class Graph
  attr_accessor :num_verticies

  # グラフを初期化するコンストラクタ
  def initialize(num_verticies)
    @num_verticies = num_verticies
    @adj_list = Array.new(num_verticies) {|i| Array.new}
  end

  # グラフにエッジを追加する方法
  def add_edge(source, destination)
      @adj_list[source].push(destination)
  end

  # 深さ優先探索
  def dfs(start)
    # 訪問した頂点をマークするための初期化配列
    used_verticies = Array.new(num_verticies, false)

    # 「開始」頂点から再帰的DFSを呼び出す
    private_dfs(start, used_verticies)
  end

  private

  # 再帰的DFS
  def private_dfs(vertex, used_verticies)
      print vertex, ' '
      used_verticies[vertex] = true

      # 隣接する獣医が訪問されていない場合、それらに行く
      @adj_list[vertex].each { |adj_vertex|
        if used_verticies[adj_vertex] == false
        then private_dfs(adj_vertex, used_verticies)
        end
      }
  end
end

def test1
  # 8つの頂点を持つグラフを作成する
  graph = Graph.new(8)

  # 頂点間のエッジを作成する
  graph.add_edge(0, 1)
  graph.add_edge(0, 2)
  graph.add_edge(1, 2)
  graph.add_edge(1, 4)
  graph.add_edge(2, 0)
  graph.add_edge(2, 3)
  graph.add_edge(3, 3)
  graph.add_edge(3, 6)
  graph.add_edge(4, 0)
  graph.add_edge(4, 5)
  graph.add_edge(5, 6)
  graph.add_edge(5, 7)
  graph.add_edge(6, 2)
  graph.add_edge(7, 3)

  print "深さ優先探索は次のとおりです: "
  graph.dfs(0)
  puts ""

  # 期待される出力
  # 深さ優先探索は次のとおりです: 0 1 2 3 6 4 5 7
end

def test2
  # 7つの頂点を持つグラフを作成する
  graph = Graph.new(7)

  # 頂点間のエッジを作成する
  graph.add_edge(0, 1)
  graph.add_edge(0, 2)
  graph.add_edge(1, 3)
  graph.add_edge(1, 4)
  graph.add_edge(2, 5)
  graph.add_edge(2, 6)

  print "深さ優先探索は次のとおりです: "
  graph.dfs(0)
  puts ""

  # 期待される出力
  # 深さ優先探索は次のとおりです: 0 1 3 4 2 5 6
end

# プログラムのテスト
test1()
test2()