=begin
Challenge Description:

Write a program to print out the endianness of the system.

Input sample:

None

Output sample:

Print to stdout, the endianness, wheather it is LittleEndian or BigEndian.
e.g.

BigEndian
Submit your solution in a file (some file name).(py2| c| cpp| java| rb| pl| php| tcl| clj| js| scala| cs| m| py3| hs| go| bash| lua) or use the online editor.
=end
([1].pack("I") == [1].pack("N")) && "BigEndian" || "LittleEndian"