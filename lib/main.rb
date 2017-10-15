require 'open-uri'

#Read into the Ideas repository files
def read_file name
	open("https://raw.githubusercontent.com/NotEnoughIdea/Ideas/master/resources/#{name}.txt").read
end

#Load the lists
def load_lists
	return read_file("what").split("\n"), read_file("who").split("\n"), read_file("in").split("\n")
end

puts "Welcome on NotEnoughIdea ruby version."
puts "If you want to randomize a new idea type: r"
puts "For refresh lists type: l"
puts "For quit type: q"

what, who, in_ = load_lists

while true 
	entry = gets.chomp

	case entry
	when "r" then puts what.sample + " " + who.sample + " "+ in_.sample if entry == "r"
	when "l" then what, who, in_ = load_lists
	when "q" then exit 
	else puts "Unknown usage."
	end
end