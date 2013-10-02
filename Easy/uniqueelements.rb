=begin
Challenge Description:

You are given a sorted list of numbers with duplicates. Print out the sorted list with duplicates removed.

Input sample:

File containing a list of sorted integers, comma delimited, one per line. E.g. 
1,1,1,2,2,3,3,4,4
2,3,4,5,5
Output sample:

Print out the sorted list with duplicates removed, one per line. 
E.g.

1,2,3,4
2,3,4,5
Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.
=end

File.open(ARGV[0]).each_line do |line|
 line = line.strip.gsub(",", "")
 arr = line.split(//)
 arr = arr.uniq
 puts arr.join(",")
end 