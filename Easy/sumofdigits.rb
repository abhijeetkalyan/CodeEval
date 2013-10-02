=begin

=end

File.open(ARGV[0]).each_line do |line|
 sum = 0
 nums = Array.new
 nums = line.strip.split(//)
 nums.each { |i| sum += i.to_i}
 puts sum
end 	