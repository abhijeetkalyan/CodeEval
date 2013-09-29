=begin
Challenge Description:

Credits: This problem appeared in the Facebook Hacker Cup 2013 Hackathon. 

When John was a little kid he didn't have much to do. There was no internet, no Facebook, and no programs to hack on. So he did the only thing he could... he evaluated the beauty of strings in a quest to discover the most beautiful string in the world. 

Given a string s, little Johnny defined the beauty of the string as the sum of the beauty of the letters in it. The beauty of each letter is an integer between 1 and 26, inclusive, and no two letters have the same beauty. Johnny doesn't care about whether letters are uppercase or lowercase, so that doesn't affect the beauty of a letter. (Uppercase 'F' is exactly as beautiful as lowercase 'f', for example.) 

You're a student writing a report on the youth of this famous hacker. You found the string that Johnny considered most beautiful. What is the maximum possible beauty of this string?

Input sample:

Your program should accept as its first argument a path to a filename. Each line in this file has a sentence. E.g.

ABbCcc
Good luck in the Facebook Hacker Cup this year!
Ignore punctuation, please :)
Sometimes test cases are hard to make up.
So I just go consult Professor Dalves
Output sample:

Print out the maximum beauty for the string. E.g.

152
754
491
729
646
Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.
=end

File.open(ARGV[0]).each_line do |line|
 line = line.downcase.gsub(/[^a-z]/, "")
 b = 0
 beauty = 0
 arr = Array.new
 while line.length > 0
 	i = line[0]
 	a = line.count i
 	arr[b] = a
 	line = line.gsub(i, "")
 	b += 1
 end
b -= 1
arr.sort! {|x,y| y <=> x}
0.upto(b) do |i|
 	beauty += arr[i] * (26 - i)
end

puts beauty

end 	