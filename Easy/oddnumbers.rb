=begin
Challenge from CodeEval:
Challenge Description:

Print the odd numbers from 1 to 99.

Input sample:

There is no input for this program.

Output sample:

Print the odd numbers from 1 to 99, one number per line. 
Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.
=end

(1..99).step(2) do |i|
	puts i
end