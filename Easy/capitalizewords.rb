=begin
Challenge Description:

Write a program which capitalizes words in a sentence.

Input sample:

Your program should accept as its first argument a path to a filename. Input example is the following

Hello world
javaScript language
a letter
Output sample:

Print capitalized words in the following way.

Hello World
JavaScript Language
A Letter
Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.
=end

File.open(ARGV[0]).each_line do |line|
 arr = Array.new
 arr = line.split
 arr.each do |i|
 	if i[0].ord > 96 
 		i[0] = i[0].upcase!
 	end
 end
line = arr.join(" ")
puts line
end 	