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

average = 0
(1..10000).each do |i|
	result = birthday_shit
	puts result
	average += result
end

puts "AVERAGE ROOM SIZE = #{average/10000}"