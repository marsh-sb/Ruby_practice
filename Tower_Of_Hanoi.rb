# ハノイの塔
# ハノイの塔というのは左の杭に積み重ねられた全ての円盤を、下記の３つのルールを満たしながら中央の杭に移動させるパズルです

# 再帰関数
def tower(disk, source, auxilary, destination)
  if disk == 1
    puts "ディスク #{disk} が #{source} から #{destination}に移動します"
    return
  end

  tower(disk - 1, source, destination, auxilary)
  puts "ディスク #{disk} が #{source} から #{destination}に移動します"
  tower(disk - 1, auxilary, source, destination)
  nil

end

# ディスク数のユーザー入力の取得
puts "ディスクの数を入力してください: "
disk = gets.to_i
puts

# 関数呼び出し
tower(disk, 'source', 'auxiliary', 'destination')
