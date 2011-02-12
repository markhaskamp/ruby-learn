require 'spec'
require 'spec/autorun'

def double_it(n)
  n * 2
end

describe Array do

  before :each do
    @a = %w(eddie would go)
  end

  it "'%w' creates an array by splitting string on whitespace" do
    @a.length.should eql 3
  end

  it "'length' returns number of elements in an array" do
    @a.length.should eql 3
  end

  it "new Array has a length of 0" do
    a = Array.new
    a.length.should eql 0
  end

  it "use integer inside brackets, [n] to access array elements" do
    @a[1].should eql "would"
  end

  it "negative index number refers to array elements starting from the end (right), -1 is the last element" do
    @a[-1].should eql "go"
  end

  it "get subarray with [index, number_of_elements]" do
    @a[1,2][0].should eql "would"
  end

  it "use '<<' to append elements to the end of an array" do
    @a.length.should eql 3
    @a << 'deeper'
    @a.length.should eql 4
    @a[3].should eql 'deeper'
  end

  describe "elements can be arbitrary expressions" do
    it "like addition" do
      x = 1
      y = 2
      z = 4
      a = [x, x+y, x+y+z]
      a[0].should eql 1
      a[1].should eql 3
      a[2].should eql 7
    end

    it "like method calls" do
      x = 1; y = 2

      a = [x, double_it(y)]
      a[0].should eql 1
      a[1].should eql 4
    end
  end

  describe "Methods" do
		describe "include?" do
    	it "returns true if the given object is present in the array" do
     	 @a.include?('eddie').should be_true
    	end
    end

		describe "map" do
			before :each do
				@map_ary = [1,2,3,5,8,13,20,40,100]
			end

			describe "is an iterator, where iterated_item and block are the map method arguments" do

				it "example 1" do
					new_ary = @map_ary.map { |n| n += 1 }

					i = 0
					@map_ary.each do |n|
						new_ary[i] = n + 1
				  end
				end
						
			end
	  end

	end
end
