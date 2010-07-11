require 'spec'
require 'spec/autorun'

describe "Open Classes" do
  before :all do
    class String
      def yo
        'whatitdo!'
      end
    end

    class Numeric
      def minutes
        self * 60
      end
    end
  end

  describe String do
    it "'capitalize' capitalizes the first character of the string" do
      "abcdefg".capitalize.should eql("Abcdefg");
    end

    it "'yo' returns string 'whatitdo!'" do
      "foo".yo.should eql 'whatitdo!'
    end
  end

  describe Numeric do
    it "'abs' returns the absolute value of a number" do
      9.abs.should eql(9)
      -9.abs.should eql(9)
    end

    it "'minutes' multiplies self by 60" do
      5.minutes.should eql 300
    end
  end

end
