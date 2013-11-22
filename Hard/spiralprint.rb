=begin
Challenge Description:

Write a program to print a 2D array (n x m) in spiral order (clockwise)

Input sample:

Your program should accept as its first argument a path to a filename. The input file contains several lines. Each line is one test case. Each line contains three items (semicolon delimited). The first is 'n'(rows), the second is 'm'(columns) and the third is a single space separated list of characters/numbers in row major order. E.g.

3;3;1 2 3 4 5 6 7 8 9
Output sample:

Print out the matrix in clockwise fashion, one per line, space delimited. E.g.

1 2 3 6 9 8 7 4 5
Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.	
=end

def printTop(arr, text)
 if arr.any?
  0.upto(arr[0].length - 1) do |i|
 	 text.concat("#{arr[0][i]} ")
  end
  arr = arr.drop(1)
  length = arr.length - 1
  0.upto(length) do |i|
     text.concat("#{arr[i].pop} ")
  end
   printBottom(arr, text)
 else
  puts text.strip
 end
end

def printBottom(arr,text)
 if arr.any?
  len = arr.length - 1
  (arr[0].length - 1).downto(0) do |i|
  	 text.concat("#{arr[len][i]} ")
  end
  arr = arr.take(len)
  len = arr.length - 1
  len.downto(0) do |i|
     text.concat("#{arr[i][0]} ")
     arr[i] = arr[i].drop(1)
  end
   printTop(arr, text)
 else
 	puts text.strip
 end

end 


File.open(ARGV[0]).each_line do |line|
 linearr = Array.new
 text = ""
 #parse the input string
 line = line.gsub ";", " "
 linearr = line.split(' ')
 width = linearr[0].to_i
 length = linearr[1].to_i
 linearr = linearr.drop(2)
 arr = Array.new(width) {Array.new(length)}
 cnt = 0
 0.upto(width - 1) do |i|
  0.upto(length - 1) do |j|
  	 arr[i][j] = linearr[cnt]
  	 cnt = cnt + 1
  end
 end
 printTop(arr, text)
end
