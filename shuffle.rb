def shuffle(array)
  a_shuffled = []
  while !array.empty?
    a_shuffled << array.delete_at(rand(array.length - 1))
  end #while
  puts a_shuffled
end #def

shuffle(["josh", "Jeff", "mary", "Dave", "davem"])