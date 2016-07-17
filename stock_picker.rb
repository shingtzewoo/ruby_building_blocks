def stock_picker array
  difference = []
  days = []
  i = 0
  j = 1
  while j < array.length
    difference.push(array[j] - array[i])
    days.push([array.index(array[i]), array.index(array[j])])
    if j == array.length-1
      i = i + 1
      j = i + 1
    end
    j+=1
  end
  days[difference.each_with_index.max[1]]
end