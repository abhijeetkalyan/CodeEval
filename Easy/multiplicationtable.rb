=begin
Challenge from CodeEval:
Challenge Description:

Print out the grade school multiplication table upto 12*12.

Input sample:

There is no input for this program.

Output sample:

Print out the table in a matrix like fashion, each number formatted to a width of 4 (The numbers are right-aligned and strip out leading/trailing spaces on each line). The first 3 line will look like:

1   2   3   4   5   6   7   8   9  10  11  12
2   4   6   8  10  12  14  16  18  20  22  24
3   6   9  12  15  18  21  24  27  30  33  36
Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.
=end


(1..12).each do |i|
	(1..12).each do |j|
		a = i*j
		str = sprintf("%4d",a)
		if j < 12 
			print str
		else
			puts str
		end
	end
end	