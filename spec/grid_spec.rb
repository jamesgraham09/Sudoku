require_relative '../lib/grid.rb'

describe Grid do
    context "initialization" do
        let(:puzzle) { '015003002000100906270068430490002017501040380003905000900081040860070025037204600' }
        let(:grid) { Grid.new(puzzle) }
        
        it 'should have 81 cells' do
            expect(grid.cells.count).to eq(81)
        end
        
        it 'should have an unsolved first cell' do
            expect(grid.cells[0]).to eq('0')
        end
        
        it 'should have a solved second cell with value 1' do
            expect(grid.cells[1]).to eq('1')
        end

        it 'can return a value based an index reference' do
            expect(grid.index_to_value([2,3,4])).to eq(['5','0','0'])
        end

        # it "can convert a point in the grid into valid cell form" do
        #     TBD
        # end

        # it 'can pick out relevant values for a given point' do
        #     expect(grid.cells.first.neighbours).to include?(6)
        # end

        it "should be able to return a list of cell objects" do
            expect(grid.cell_objects.first.value).to eq("0")
        end

        it "should be able to compile a list of indexes which need to be solved" do
            expect(grid.cells_to_be_solved.count).to eq(41)
        end

        it "should be able to gather a list of relevant cells for the first cell to be solved" do
            expect(grid.cells_to_be_solved.first.relevant_cells).to eq([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 18, 19, 20, 27, 36, 45, 54, 63, 72])
        end

        it "should be able to gather a list of comparitor values of the first cell" do
        expect(grid.values_of_relevant_cells.first).to eq(["0", "1", "2", "3", "4", "5", "7", "8", "9"]) 
        end

        it "should be able to return the missings value for relevant_cells" do 
            expect(grid.missing_values).to eq([6])
        end


        # xit "should be able to return a solved puzzle with a unsolved sudoku" do
        #     expect(grid.solved.first).to eq(6)
        # end
    end
end


# describe Grid do
#   let(:grid) { #init in here }
#   context "solving sudoku" do
#     it "can solve the puzzle" do
#       expect(grid.solved?).to be_false
#       grid.solve
#       expect(grid.solved?).to be_true
#       expect(grid.to_s).to eq('615493872348127956279568431496832517521746389783915264952681743864379125137254698')
#     end
#   end
# end
