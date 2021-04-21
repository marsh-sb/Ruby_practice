# 配列回転の関数
# 配列の要素を1つのインデックスだけ左にシフトし、
# ゼロ番目のインデックス付き要素を（n-1）番目のインデックスに回転します

def Left_Array_Rotation(arr , n)
  temp = arr[0]
  for i in 0..n-2
    arr[i] = arr[i+1]
  end
  arr[n-1] = temp
  return arr
end

# 回転を実行する回数の関数
def Rotation(input , no_of_rot , n)
  d = no_of_rot
  temp_arr = input
  for i in 0..d-1
    temp_arr = Left_Array_Rotation(temp_arr , n)
  end
  for i in 0..n-1
    print(temp_arr[i].to_s + " ")
  end
end

input = [1 , 3 , 8 , 5 , 9]
no_of_rot = 2   # 回転を実行する回数の変数
n = input.length()


Rotation(input , no_of_rot , n)