=begin
Challenge Description:

Given a number n and two integers p1,p2 determine if the bits in position p1 and p2 are the same or not. Positions p1 and p2 and 1 based.

Input sample:

The first argument will be a text file containing a comma separated list of 3 integers, one list per line. E.g.

86,2,3
125,1,2
Output sample:

Print to stdout, 'true'(lowercase) if the bits are the same, else 'false'(lowercase). E.g.

true
false
Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.
=end

File.open(ARGV[0]).each_line do |line|
 arr = Array.new
 arr = line.split(",")
 x = arr[1].to_i - 1
 y = arr[2].to_i - 1
 arr[0] = arr[0].to_i
 arr[0] = arr[0].to_s(2)
 bits = Array.new
 bits = arr[0].split(//)
 bits.reverse!

 if bits[x] == bits [y]
 	puts "true"
 else
 	puts "false"
 end		
end 