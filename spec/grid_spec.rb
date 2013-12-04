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
