def distribute_candies(candies)
  kind = candies.uniq.size
  if kind>candies.size/2
    candies.size/2
  else
    kind
  end
end

p distribute_candies([1,1,2,3])