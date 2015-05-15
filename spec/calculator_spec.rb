require_relative '../calculator'

RSpec.describe Calculator do
	before(:each) do
		@sut = Calculator.new
	end
	describe ".calculate" do
		context "with out a start time" do
			it "should throw an ArgumentError" do
				expect{@sut.calculate}.to raise_error(ArgumentError)
			end
		end
		context "with a nil start time" do
			it "should throw a RuntimeError" do
				expect{@sut.calculate nil}.to raise_error(RuntimeError)
				expect{@sut.calculate ""}.to raise_error(RuntimeError)
			end
		end
	end
end