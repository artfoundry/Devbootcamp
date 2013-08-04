Dir.chdir("images/new")

pic_names = Dir["../*.{JPG,jpg}"]
puts "batch name?"
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files: "

pic_number = 1

pic_names.each do |name|
  print "."
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end
  if File.exist?(new_name)
    raise "File not renamed.  File already exists!"
    exit
  else
    File.rename(name,new_name)
  end
  pic_number += 1
end

puts
puts "Done"