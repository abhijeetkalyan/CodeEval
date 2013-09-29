=begin
Challenge Description:

Write a program to reverse the words of an input sentence.

Input sample:

The first argument will be a text file containing multiple sentences, one per line. Possibly empty lines too. E.g.

Hello World
Hello CodeEval
Output sample:

Print to stdout, each line with its words reversed, one per line. Empty lines in the input should be ignored. Ensure that there are no trailing empty spaces on each line you print. E.g.

World Hello
CodeEval Hello
Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.
=end

File.open(ARGV[0]).each_line do |line|
 line.reverse!
 puts line
end 	