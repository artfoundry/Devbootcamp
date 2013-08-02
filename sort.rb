def sort(array)
  a_sorted = []
  a_sorted[0] = array.first
  array.each do |word|
    a_sorted.each do |sorted|
      if word < sorted
        a_sorted.insert(a_sorted.index(sorted), word)
        break
      elsif (word > sorted) && (a_sorted.index(sorted) == a_sorted.length - 1)
        a_sorted << word
      end #if
    end #do
  end #do
  puts a_sorted
end #def

sort(["josh", "jeff", "mary", "dave"])