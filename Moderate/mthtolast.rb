=begin
Challenge Description:

Write a program to determine the Mth to last element of a list. 
Input sample:

The first argument will be a text file containing a series of space delimited characters followed by an integer representing a index into the list (1 based), one per line. E.g. 
a b c d 4
e f g h 2
Output sample:

Print to stdout, the Mth element from the end of the list, one per line. If the index is larger than the list size, ignore that input. E.g.

a
g
Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.
=end

File.open(ARGV[0]).each_line do |line|
arr = Array.new
arr = line.split
m = arr.length - 1
val = arr[m].to_i
if val <= m
	ans = arr[m-val]
 	puts ans
end

end 	