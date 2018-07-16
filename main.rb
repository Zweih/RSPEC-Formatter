# place RSPEC vars in input.txt

# Format:
# two_ship_grid =  [[:s, :s], [nil, nil]] 
# two_ship_board =  Board.new(two_ship_grid) 
# full_grid =  [[:s, :s], [:s, :s]] 
# full_board =  Board.new(full_grid) 

input = File.readlines("input.txt")
arr = input.map {|el| el.strip if el.strip != ""}
arr.compact!

arr.each do |el|
	puts "#{el[5...el.index(")")]} = #{el[(el.index("{") + 1)...-1]}"
end

puts #for output cleanliness