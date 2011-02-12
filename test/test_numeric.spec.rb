require 'spec'
require 'spec/autorun'

describe Numeric do
  describe "methods" do
    it "'abs' returns the absolute value of a number" do
      9.abs.should eql(9)
      -9.abs.should eql(9)
    end

    it "'zero?' returns true if number == 0" do
      (9 - (3*3)).zero?.should be_true

      j = 0
      j.zero?.should be_true
    end
  end

  #it "'minutes' should raise NoMethodError" do
  #  lambda { 5.minutes }.should raise_error(NoMethodError)
  #end
end
