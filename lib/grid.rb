require_relative '../lib/cell.rb'

class Grid
	attr_reader :cell_objects

	def initialize(puzzle)
		@cells = puzzle.to_s.chars
		@cell_objects = []
		@cells.each_with_index{|c,i| @cell_objects << Cell.new(c, i)}
	end

	def solve

	end

	def cells
		@cells
	end

	def cell_ref
	end

	def index_to_value(index_refs)
	    index_refs.map {|i| @cells[i]}
	end

	def cell_format
		
	end

	def cells_to_be_solved
		cell_objects.select{|cell| cell.value.to_i == 0 }
	end

	def values_of_relevant_cells
		array = []
		cells_to_be_solved.each do |cell|
			array << index_to_value(cell.relevant_cells).sort.uniq
		end
		array
	end

	def missing_values
		arr = []
		values_of_relevant_cells.each do |cell|
			arr << (1..9).to_a - cell.map{|a| a.to_i}
		end
		arr
	end




end
	

# 	def horizontal_compare(cell_ref)
# 		cell_ref 
# 		row_ID = cell_ref / 9
# 		first_num = row_ID * 9
# 		Array.new(9){first_num)

# end


