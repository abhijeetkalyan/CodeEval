=begin
Challenge Description:

Write a program to determine the sum of the first 1000 prime numbers.

Input sample:

There is no input for this program.

Output sample:

Your program should print the sum on stdout, i.e.

3682913
Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.
=end

def isPrime(x)
y = Math.sqrt(x).ceil	
3.upto y do |i|
	if x.modulo(i) == 0 
		return false
	end
end
return true		
end

ctr = 0
sum = 5
i = 5

while ctr < 998
	if isPrime(i)
		ctr += 1
		sum += i
	end
i += 2
end		

puts sum