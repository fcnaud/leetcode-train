def show_time(arr)
  hour = 0
  (0...4).each do |val|
    hour+=(2**val) if arr[val+1]
  end
  return [] if hour>=12
  min = 0
  (0...6).each do |val|
    min+=(2**val) if arr[val+1+4]
  end
  return [] if min>=60
  [hour.to_s + ":" + "%02d" % min]
end

def dfs(arr, ind, left)
  return show_time(arr) if ind>10

  ans = []
  if left==0
    arr[ind] = false
    ans.concat dfs(arr, ind+1, left)
  elsif (10-ind+1)==left
    arr[ind] = true
    ans.concat dfs(arr, ind+1, left-1)
  else
    arr[ind] = false
    ans.concat dfs(arr, ind+1, left)
    arr[ind] = true
    ans.concat dfs(arr, ind+1, left-1)
  end
  ans
end

def read_binary_watch(num)
  arr = Array.new(11)
  dfs(arr, 1, num)
end

p read_binary_watch(2)
p read_binary_watch(1)

