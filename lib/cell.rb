
class Cell

  attr_accessor :value
	attr_reader :cell_ref

  # locations of squares in box relative to first square
  BOX_SHAPE = [0,1,2,9,10,11,18,19,20]


  

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
  
      #   relevant_cells = horizontal_ref + vertical_ref + box_ref
      #   poss = Grid.new.index_to_value(relevant_cells.uniq)

      #   cell = poss.first if poss.count == 1
      #   cell
      # end


      def horizontal_ref
        cell_zero = (self.row) * 9
        Array.new(9){|i| cell_zero + i}
      end

      def vertical_ref
        cell_zero = (self.col)
        Array.new(9){|i| cell_zero + i*9}
      end      


      # def box_ref
      #   (0..80).to_a.select {|i| i if Cell.new(0, i).box == self.box}
      # end      

      def box_ref
        cell_zero = ((self.box / 3) * 27 + (self.box % 3) * 3) # convert to something
        BOX_SHAPE.map {|i| cell_zero + i}
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
