# ビーズソートは自然なソートアルゴリズムであり、重力ソートとも呼ばれます
# このアルゴリズムは自然現象から着想を得ており、重力の影響下にあるオブジェクト（またはビーズ）を念頭に置いて設計されています
# アイデア：正の数はそろばんのようなビーズのセットで表されます

class Array
  # ビーズソート　アルゴリズム関数
  def beadsort
    # これにより、行列が取得され、転置されて並べ替えられます
    map { |e| [1] * e }.columns.columns.map(&:length)
  end

  # 行列の列
  def columns
    y = length
    x = map(&:length).max
    Array.new(x) do |row|
      Array.new(y) { |column| self[column][row] }.compact # null値を削除します
    end
  end
end

# 動的配列入力を取得するための関数
def myarray(a, n)
  for i in 0..n
    a[i] = gets.chomp.to_i
  end
  return a
end


a = Array.new
n = gets.chomp.to_i
new_arr = myarray(a, n)
print(new_arr.beadsort.reverse())

# 出力結果
# 並べ替える前
# 23 2 12 54 90 102 32
# 並べ替えた後
# 2 12 23 32 54 90 102