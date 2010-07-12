require 'spec'
require 'spec/autorun'

describe Hash do

  before :each do
    @h = {:one => 1, :two => 2, :four => 4}
  end

  it "literals can be defined thusly '{:key => value, :key2 => value2}" do
    @h[:one].should eql 1
  end

  it "use [:key] to access elements of hash" do
    @h[:two].should eql 2
  end

end
