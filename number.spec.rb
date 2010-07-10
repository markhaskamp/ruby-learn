require 'spec'
require 'spec/autorun'

describe Numeric, "methods" do

  it "'abs' returns the absolute value of a number" do
    9.abs.should eql(9)
    -9.abs.should eql(9)
  end

  it "'zero?' returns true if num has a zero value" do
    (9 - (3*3)).zero?.should be_true
  end
end
