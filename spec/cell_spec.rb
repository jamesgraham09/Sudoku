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

end
