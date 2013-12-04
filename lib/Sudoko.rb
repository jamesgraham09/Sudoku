# Plan to create Sudoku game
	# Iterate over every cell in the grid
		# For every cell, check if it's filled out
		# If it is, skip it
		# If it isn't, check what values are possible
		# Possible values are computed by taking an array of 1 to 9 and subtracting all values in the same row, same column and same box.
		# If only one value is possible, assign it to the cell
		# If more than one value is possible, skip this cell
		# If you haven't made any changes during the iteration, this isn't an easy sudoku, break out of the cycle
		# If you have made the changes but the grid isn't filled out, iterate again
		# If the grid is filled out, you found the solution, break out of the cycle

