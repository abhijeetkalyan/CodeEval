=begin
Challenge Description:

Write a program to read a multiple line text file and write the 'N' longest lines to stdout. Where the file to be read is specified on the command line.

Input sample:

Your program should read an input file (the first argument to your program). The first line contains the value of the number 'N' followed by multiple lines. You may assume that the input file is formatted correctly and the number on the first line i.e. 'N' is a valid positive integer.e.g.

2
Hello World

CodeEval
Quick Fox
A
San Francisco
NOTE: For solutions in JavaScript, assume that there are 8 lines of input (i.e. line 1 will be N and the next 7 lines will be the input lines
Output sample:

The 'N' longest lines, newline delimited. Do NOT print out empty lines. Ignore all empty lines in the input. Ensure that there are no trailing empty spaces on each line you print. Also ensure that the lines are printed out in decreasing order of length i.e. the output should be sorted based on their length e.g.

San Francisco
Hello World
Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.
=end
min_length = 0
firstline = File.open(ARGV[0]).gets
b = firstline.to_i
arr = Array.new
i = 0
lines = Hash.new
File.open(ARGV[0]).drop(1).each do |line|

x = line.length
	if x > 0
		arr[i] = x
		lines[x] = line
		i += 1
	end
end 

arr.sort!
arr = arr.drop(i - b)
arr.reverse!

arr.each do |i|
	puts lines[i]
end

