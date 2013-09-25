=begin
Challenge from CodeEval:
Challenge Description:

Print out the sum of integers read from a file.

Input sample:

The first argument to the program will be a text file containing a positive integer, one per line. E.g.

5
12
Output sample:

Print out the sum of all the integers read from the file. E.g.

17
Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.
=end
#Read from file
a = 0
File.open(ARGV[0]).each_line do |line|
 a += line.to_i
end 	
puts a