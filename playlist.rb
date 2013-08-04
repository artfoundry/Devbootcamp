def shuffle(array)
  a_shuffled = []
  while !array.empty?
    a_shuffled << array.delete_at(rand(array.length - 1))
  end #while
  return a_shuffled
end #def

def playlist
  path = "/Volumes/Delerium/iTunes/iTunes Media/Delerium/Music Box Opera (Deluxe Edition)/"
  filename = "playlist_dave.m3u"
  list = []
  Dir.foreach(path) {|song| list << path + song + "\n" unless song == "." || song ==".."}

  newlist = []
  newlist = shuffle(list)

  File.open(filename, "w") {|file| file.write(newlist)}
  puts "Playlist created!"
end #def

playlist