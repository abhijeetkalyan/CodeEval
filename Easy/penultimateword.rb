=begin
Challenge Description:

Write a program which finds the next-to-last word in a string.

Input sample:

Your program should accept as its first argument a path to a filename. Input example is the following

some line with text
another line
Each line has more than one word.

Output sample:

Print the next-to-last word in the following way.

with
another
Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.
=end

File.open(ARGV[0]).each_line do |line|
 words = Array.new	
 words = line.reverse!.split
 puts words[1].reverse
end 