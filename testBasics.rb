#comment
#
print "enter a value"

variable_name = gets.to_i

print "Enter another value"

second_variable_name = gets.to_i

puts variable_name.to_s + " + " + second_variable_name + " = " + (variable_name + second_variable_name).to_s

#arithmetic operators
puts "6 + 4 = " + (6+4).to_s
puts "6 - 4 = " + (6-4).to_s
puts "6 * 4 = " + (6*4).to_s
puts "6 / 4 = " + (6/4).to_s
puts "6 % 4 = " + (6%4).to_s #modulus (returns the remainder of division)

###############################

num_one = 1.000

num_99 = 0.999

puts num_one.to_s + " - " + num_99.to_s + " = " + (num_one - num_99).to_s

puts 1.class #error with this line for some reason????
puts 1.234.class
puts "A String".class

###########

write_handler = File.new("yourSum.out", "w") #creates a new file called yourSum.out, w says that the file can be written to. 

write_handler.puts("Random Text").to_s #establishes the content of yourSum.out

write_handler.close #closes the write_handler

data_from_file = File.read("yourSum.out") #says that data_from_file is equal to the content of yourSum.out

puts "Data From File : " + data_from_file #calls data_from_file

###########

=begin
Multiline comment
=end

age = 12

if (age >= 5) && ( age <= 6)
	puts "You're in kindergarten"
elsif (age >= 7) && ( age <= 13)
	puts "You're in Middle School"
elsif (age >= 14) && ( age <= 18)
	puts "You're in High School"
else
	puts "You should be on to bigger and better things"
end

#########

x = 1

loop do
	x += 1
	
	next unless (x % 2) == 0 #only returns values that have a modulus of 0, meaning evenly divisible by 2 in this case
	puts x
	
	break if x >= 10 #stops once x hits 10, will also return 10 since it is >=, if just >, 10 wouldn't be included
end

############

y = 1

while y <= 10
	y += 1 
	next unless (y % 2) == 0
	puts y
end

##########

a = 1

until a >= 10
	a += 1 
	next unless (a % 2) == 0 
	puts a 
end

##########

numbers = [1,2,3,4,5]

for number in numbers
	puts "#{number}," #using puts will add a new line after each number, substituting print for puts then there will be no new line
end

#########

def add_nums(num_1, num_2)
	return num_1.to_i + num_2.to_1
end
puts add_nums(3,4)

#########

print "enter a number"

first_num = gets.to_i
print "enter another number"
second_num = gets.to_i

begin
	answer = first_num/second_num
rescue
	puts "you can't divide by zero"
	exit
end

puts "#{first_num} / #{second_num} = #{answer}"

#########

age = 12

def check_age(age)
	raise ArgumentError, "enter a number" unless age > 0
end

begin
	check_age(-1)
rescue ArgumentError
	puts "That is an impossible age"
end

########
