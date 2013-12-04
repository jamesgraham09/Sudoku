
class Cell

  attr_accessor :value
	attr_reader :cell_ref
  

      def initialize(value,cell_ref)
        @value = value
        @cell_ref = cell_ref
      end

      def row
        @cell_ref / 9
      end

      def col
        @cell_ref % 9
      end

      def box
        (row / 3) * 3 + col / 3
      end

      def possible_values(neighbours)
        (1..9).to_a - neighbours
      end

      def solve(neighbours)
        values = possible_values(neighbours)
        if values.length == 1
          self.value = values[0]
        end
      end

      def horizontal_ref
        start = (self.row) * 9
        Array.new(9){|i| start + i}
        # horizontals.each { |@cells| @cells[horizontals]}    
      end

end

# cell = Cell.new(6,9)
# puts cell.inspect
# puts cell.row_id
# puts cell.col_id












#   	def initialize
#     @value = nil
#   	end
  
#   	# returns true if the cell is filled out, false otherwise
  
#   	def filled_out?
#     # it may be convenient (depending on your design) to use
#     # 0 as the "unsolved" value for the cell. This way
#  	# you won't have to differentiate between numbers and nil
#     # values when you calculate neighbours.
#  	end

#   	def candidates
#     end

#     def solve
#     end

# end
