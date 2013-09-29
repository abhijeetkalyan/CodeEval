=begin
Challenge from CodeEval:
Challenge Description:

Write a program which checks input numbers and determines whether a number is even or not.

Input sample:

Your program should accept as its first argument a path to a filename. Input example is the following

701
4123
2936
Output sample:

Print 1 if the number is even or 0 if the number is odd.

0
0
1
All numbers in input are integers > 0 and < 5000.

Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.
=end
File.open(ARGV[0]).each_line do |line|
 a = line.to_i
 if a.modulo(2) == 0
 	puts 1
 else
 	puts 0
 end
end