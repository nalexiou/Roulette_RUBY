

numbers = [0, 2, 14, 35, 23, 4, 16, 33, 21, 6, 18, 31, 19, 8, 12, 29, 25, 10, 27, 37, 1, 13, 36, 24, 3, 15, 34, 22, 5, 17, 32, 20, 7, 11, 30, 26, 9, 28]

print "Enter number: "
draw = gets.chomp.to_i

while !(draw == -1) do
	currentposition = numbers.index(draw)
	selectednumbers = []
	(currentposition-4..currentposition+5).each do |x|
		selectednumbers << numbers[x%38] if x >=0
		selectednumbers << numbers[x+38] if x<0
	end
	p selectednumbers.sort
	print "Enter number: "
	draw = gets.chomp.to_i
end

p "Done!"
