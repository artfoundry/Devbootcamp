def sort(array)
  a_sorted = []
  a_sorted.insert(0,array.delete_at(0))
  puts sort_recursive(array,a_sorted)
end

def sort_recursive(array,a_sorted)
  if !array.empty?
    sortdone = false
    a_sorted.each_index do |i|
      if array[0] < a_sorted[i]
        a_sorted.insert(i,array.delete_at(0))
        break
      elsif a_sorted[i + 1] == nil
        a_sorted << array.delete_at(0)
      end #if
    end #do
    sort_recursive(array,a_sorted)
  end #if
  a_sorted
end #def

sort(["josh", "jeff", "mary", "dave"])