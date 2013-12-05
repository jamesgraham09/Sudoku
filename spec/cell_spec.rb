require_relative '../lib/cell.rb'

describe Cell do

    it "should have a correct row id" do
        cell = Cell.new(0,29); expect(cell.row).to eq(3)
        cell = Cell.new(0,2); expect(cell.row).to eq(0)
    end

    it "should have a correct col id" do
        cell = Cell.new(0,29); expect(cell.col).to eq(2)
        cell = Cell.new(0,2); expect(cell.col).to eq(2)
    end

    it "can understand which horizontal cells to reference" do
    	cell = Cell.new(0,29)
    	expect(cell.horizontal_ref).to eq((27..35).to_a)
    end
 
    it "can understand which vertical cells to reference" do
    	cell = Cell.new(0,29)
    	expect(cell.vertical_ref).to eq([2,11,20,29,38,47,56,65,74])
    end

    it "can understand which box to reference" do
    	cell = Cell.new(0,29) ; expect(cell.box_ref).to eq([27,28,29,36,37,38,45,46,47])
    	cell = Cell.new(0,33) ; expect(cell.box_ref).to eq([33,34,35,42,43,44,51,52,53])
    end

    it "should have a correct box id" do
    	cell = Cell.new(0,29); expect(cell.box).to eq(3)
        cell = Cell.new(0,2); expect(cell.box).to eq(0)
    end

    it "can solve itself with enough information" do
    	cell = Cell.new(0,12)
    	neighbours = [1,2,3,4,6,7,8,9]
    	cell.solve(neighbours)
    	expect(cell.value).to eq(5)
    end

    it 'can find all relevant cells based on a grid reference' do
        cell = Cell.new(0,29)
        expect(cell.relevant_cells).to eq([2,11,20,29,38,47,56,65,74,27,28,30,31,32,33,34,35,36,37,45,46].sort) 
    end
end
