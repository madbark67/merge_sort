def merge_sort(unsorted_array) 
  half_index = unsorted_array.length/2
  final_array = []
  left_array = []
  right_array = []
  if unsorted_array.length <= 1
    return unsorted_array
  else
    left_array.concat(merge_sort(unsorted_array.slice(0..half_index-1)))
    right_array.concat(merge_sort(unsorted_array.slice(half_index..-1)))
    unsorted_array.length.times do 
      if left_array.empty?
        final_array.concat(right_array)
        break
      elsif right_array.empty?
        final_array.concat(left_array)
        break
      elsif left_array[0] < right_array[0]
        final_array.push(left_array.shift)
      else
        final_array.push(right_array.shift)
      end
    end
  end
  final_array
end

p merge_sort([])
p merge_sort([73])
p merge_sort([1,2,3,4,5])
p merge_sort([3,2,1,13,8,5,0,1])
p merge_sort([105,79,100,110])