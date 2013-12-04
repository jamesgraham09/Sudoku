require_relative '../lib/cell.rb'

class Grid

	def initialize(puzzle)
		@cells = puzzle.to_s.chars
	end

	def solve
	end

	def cells
		@cells
	end

	def cell_ref
	end

	def get_neighbours(index_refs)
		return_array = []
		index_refs.each {|i| return_array << @cells[i]}
		return_array
	end	

end
	

# 	def horizontal_compare(cell_ref)
# 		cell_ref 
# 		row_ID = cell_ref / 9
# 		first_num = row_ID * 9
# 		Array.new(9){first_num)

# end


grid = Grid.new('015003002000100906270068430490002017501040380003905000900081040860070025037204600')
puts grid.inspect
# # puts grid.cells.inspect

# horizontal_ref(20)