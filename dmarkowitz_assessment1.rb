# Exercise 1

home_address = "536 Latimer Circle"
home_city = "Campbell"
home_state = "CA"


# Exercise 2
#
# first_name = "Anne"
# The "first_name" is a variable, which is like a box that holds something, 
# and in this case, that something is the word "Anne".  Using the = tells the computer that you want the container called first_name
# to contain the name "Anne".
#
# first_name == "Anne"
# In this statement, == means that we want to ask the computer if the contents of first_name is the same as "Anne".
# Since in the previous statement, we told the computer we want first_name to contain "Anne", 
# the computer's response to this statement will be "true".
#
# "Spalding" = first_name 
# This is an invalid statement because the item on the left side of the = needs to be a variable (the container), 
# and the item on the right side needs to be the contents that goes into that variable.  You can't tell the computer
# to fill the word "Spalding" with something because it's not a container - the quotes around the word indicate that it's 
# a string, which is simply a series of letters, numbers, or symbols.
# The corrected statement would be:
# first_name = "Spalding"
#
# "Spalding" == first_name
# This statement is just like the second one that compared first_name to "Anne".  However, in this case, since first_name still
# contains "Anne" (because the third line didn't succeed at putting "Spalding" into first_name), when we ask the computer
# to if this statement is true, it will respond with "false".


# Exercise 3
#
# consider this array: ["ruby", "is", "the", "best", "programming", "language", "ever"]
# value stored at index 3 is "best"
# index of the word "ruby" is 0
# length of the array is 7


# Exercise 4

def product(ints)
	total = 1
	ints.each {|i| total *= i}
	total
end

# Just an fyi, the third example, product([1,-1,-10]), states the answer should be -11, but this is wrong.  Answer should be 10.


# Exercise 5

def product_odd(ints)
	total = 1
	ints.each {|i| total *= i if i % 2 == 1}
	total
end


# Exercise 6

def fizzblam
    1.upto(1000) do |i|
		if (i % 5 == 0) || (i % 7 == 0)
            print "Fizz" if i % 5 == 0
		    print "Buzz" if i % 7 == 0
		else
            print i
        end
		puts "\n"
	end
end


# Exercise 7
#
# method_1 searches the input array and returns the largest number in the array
#
# method_2 searches the input array and returns an array of all numbers greater than 0
#
# method_3 searches the input array and returns an array of all even numbers

def method_1(array)
  foo = array.first

  array.each {|num| foo = num if num > foo}

  foo
end


# Exercise 8
#
# return sends the end result of a method back to whatever called the method.
# puts simply prints its contents to the output stream (the console/terminal, a text file, or whatever output method is used)


# Exercise 9
#
# Part 1
# To solve this problem, we simply need to put the numbers in order in an array (assuming the list of numbers is sent as a string)
# and then iterate through the array until the missing number is found.  
# To find the missing number, we can compare the contents of an array's cell to the cell's index.  
# The number in the cell should be 1 more than the index in each case, so once we find a number that's 
# 2 more than the index, that will be the number after the missing one.
#
# Part 2

def missing(numbers)
    numarray = numbers.scan(/\d+/).sort
	numarray.each_index {|i| return numarray[i].to_i - 1 if numarray[i].to_i > i + 1}
end

# time taken: 19 min (note: time for exercises 9-11 includes reading the problem, planning/research, coding, and debugging)


# Exercise 10

# Pseuo code:
# class Grocery_list
# 	when creating class, create new hash
#
#	search method
#		search hash for item
#		increase count of 1 for item if item is found
#		else add item to hash with value of 1
#   return hash
# end

# Ruby code:
class Grocery_list
    def initialize
        @list = Hash.new
    end

    def search(item)
        if @list.include?(item)
		    @list[item] += 1 
	    else
		    @list[item] = 1
	    end
	    return @list
    end
end

# time taken: 25 min


# Exercise 11

class House
    def initialize(temp,min,max)
		@temp = temp
		@min = min
		@max = max
		@heat = false
		@ac = false
	end

	def update_temperature!
		@temp += 1 if @heat == true
		@temp -= 2 if @ac == true
		heater!("off") and aircond!("on") if @temp >= @max
		heater!("on") and aircond!("off") if @temp <= @min
		puts @temp
	end

	def heater!(state)
		if state == "on"
            @heat = true 
		else 
            @heat = false
        end
	end

	def aircond!(state)
		if state == "on"
            @ac = true
		else 
            @ac = false
        end
	end
end

# time taken: 27 min


# Exercise 12

# http://jsfiddle.net/4dg5S/6/