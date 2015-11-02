def birthday_shit
	people = [0, 0]
	while true
		new_birthday = (1..365).to_a.sample
		people << new_birthday
		people[0..-2].each do |birthday|
			if birthday == new_birthday
				return people.length - 2
			end
		end
	end
end

puts "Input sample size."
size = gets.chomp.to_i
while !size.is_a?(Integer)
	puts "Invalid sample size. Input an integer."
	size = gets.chomp.to_i
end

counts = Hash.new 0
average = 0
(0..size).each do |i|
	result = birthday_shit
	average += result
	counts[result] += 1
end

counts = counts.sort_by {|size, number| size}
counts.each do |key, value| puts "#{key}: #{value}" end
puts "AVERAGE ROOM SIZE = #{average/size}"