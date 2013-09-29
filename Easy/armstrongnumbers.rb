=begin
Challenge Description:

An Armstrong number is an n-digit number that is equal to the sum of the n'th powers of its digits. Determine if the input numbers are Armstrong numbers.

Input sample:

Your program should accept as its first argument a path to a filename. Each line in this file has a positive integer. E.g.

6
153
351
Output sample:

Print out True/False if the number is an Armstrong number or not. E.g.

True
True
False
Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.
=end

File.open(ARGV[0]).each_line do |line|
 a = line.to_i
 b = 0
 nums = Array.new
 nums = line.strip.split(//)
 nums.each { |i| b += i.to_i**nums.length}
 if a == b
 	puts "True"
 else
 	puts "False"
 end
end 	