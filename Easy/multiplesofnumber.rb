=begin
Challenge Description:

Given numbers x and n, where n is a power of 2, print out the smallest multiple of n which is greater than or equal to x. Do not use division or modulo operator.

Input sample:

The first argument will be a text file containing a comma separated list of two integers, one list per line. E.g.

13,8
17,16
Output sample:

Print to stdout, the smallest multiple of n which is greater than or equal to x, one per line. E.g.

16
32
Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.
=end

File.open(ARGV[0]).each_line do |line|
 arr = Array.new
 arr = line.split(",")
 x = Math.log2(arr[0].to_f) - Math.log2(arr[1].to_f)
 x = x.ceil
 puts arr[1].to_i*(2**x)
end 