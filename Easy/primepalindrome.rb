=begin
Write a program to determine the biggest prime palindrome under 1000.

Input sample:

There is no input for this program.

Output sample:

Your program should print the largest palindrome on stdout, i.e.

929
Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.
=end

b = 0

def isPrime(x)
y = Math.sqrt(x).ceil	
3.upto y do |i|
	if x.modulo(i) == 0
		return false
	end
end
return true		
end


(1..999).step(2) do |i|

	if i.to_s == i.to_s.reverse
		if isPrime(i)
			b = i
		end	
	end	
end

puts b