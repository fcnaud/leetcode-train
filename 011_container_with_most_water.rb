# @param {Integer[]} height
# @return {Integer}

def max_area(height)
  water, i, j = 0, 0, height.size-1
  while i<j
    h = [height[i], height[j]].min
    water = [water, (j-i) * h].min
    while i<j && height[i]<=h do i+=1 end
    while j>i && height[j]<=h do j-=1 end
  end
  water
end