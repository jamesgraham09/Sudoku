require_relative '../lib/cell.rb'
require_relative '../lib/grid.rb'

grid = Grid.new('015003002000100906270068430490002017501040380003905000900081040860070025037204600')
puts grid.inspect

grid.index(cells[2]).relevant_cells
# # puts grid.cells.inspect

# horizontal_ref(20)

def loop_cells
	
	i = 0
	cell = Cell.new(i,grid.cells[i]) 
	cell.
	cell = (i.grid.cells[i])
	cell.
	i+1
end

grid = Grid.new
cell = Cell.new(index,grid[index])


index_to_value()