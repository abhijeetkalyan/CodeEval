=begin
Challenge from CodeEval:
Prime Palindrome

Challenge Description:

Write a program to determine the biggest prime palindrome under 1000.

Input sample:

There is no input for this program.

Output sample:

Your program should print the largest palindrome on stdout, i.e.

929
=end
b = 0.0	
5.upto(1000) do |i|
 n = ((i.to_f) ** 2 + 17.0)/12.0
	if n.modulo(0.5) == 0
		puts n
		str = i.to_s
		if str == str.reverse && i > b
			b = i
			puts i
		end	
	end	
end	
puts b	

