=begin
Challenge from CodeEval:
Lowercase

Challenge Description:

Given a string write a program to convert it into lowercase.

Input sample:

The first argument will be a text file containing sentences, one per line. You can assume all characters are from the english language. E.g.

HELLO CODEEVAL
This is some text
Output sample:

Print to stdout, the lowercase version of the sentence, each on a new line. E.g.

hello codeeval
this is some text
=end


File.open(ARGV[0]).each_line do |line|
 line.downcase!
 puts line
end 	