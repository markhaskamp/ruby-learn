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

  #it "'minutes' should raise NoMethodError" do
  #  lambda { 5.minutes }.should raise_error(NoMethodError)
  #end
  end

  describe "iterators" do
    it "'upto' iterates from self to n, inclusive" do
      n = 0
      y = 0
      3.upto(6) {
        |x| n += 1 
        y = x
      }
      n.should eql 4
      y.should eql 6
    end

    it "'downto' iterates from self to n, inclusive" do
      n = 0
      y = 0
      42.downto(32) {
        |x| n += 1 
        y = x
      }
      n.should eql 11
      y.should eql 32
    end

    it "'times' invokes its block (yields) self times" do
      n = 0
      2.times {|x| n += 1}
      n.should eql 2
    end

    it "'times' starts at 0" do
      n = 42
      1.times {|x| n = x }
      n.should eql 0

      n = 0
      5.times { |x| n += x}
      n.should eql(0+1+2+3+4)
    end
  end

end
