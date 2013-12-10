require_relative '../lib/cell.rb'

class Grid
	attr_reader :cell_objects

	def initialize(puzzle)
		@cells = puzzle.to_s.chars.map {|a|a.to_i}
		@cell_objects = []
		@cells.each_with_index{|c,i| @cell_objects << Cell.new(c, i)}
	
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

	def try_to_solve
		cells.each
	end  

	def all_cells_string
		cell_objects.map {|cell|cell.value.to_s}
	end


	# def solve
	#     outstanding_before, looping = cells_to_be_solved.count, false
	#     while !solved? && !looping
	#       try_to_solve # ask each cell to solve itself
	#       outstanding         = cells_to_be_solved.count
	#       looping             = outstanding_before == outstanding       
	#       outstanding_before  = outstanding     
	#     end 
 #  	end

 def solve_the_ones_we_can
 	return if missing_values.count == 0
	 	missing_values.each_with_index do |value, index|
	 		if value.count == 1
	 			cell_objects[index].value = value.first
	 		end
	 	end
 end

 def try_to_solve
 	# return if cells_to_be_solved.count == 0
 	solve_the_ones_we_can
 	# try_to_solve
 end




 	# to_be_solved = []
 	# missing_values.each_with_index do |item, index|
 	# 	if item.count == 1
 	# 		to_be_solved << [index, item.first]
 	# 	end
 	# end

 	# to_be_solved.each do |item|
 	# 	cell_objects[item[0]].value = item[1]
 	# end 





end
	

# 	def horizontal_compare(cell_ref)
# 		cell_ref 
# 		row_ID = cell_ref / 9
# 		first_num = row_ID * 9
# 		Array.new(9){first_num)

# end


