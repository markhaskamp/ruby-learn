require 'spec'
require 'spec/autorun'

describe "Open Classes" do
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

  before :all do

    it "'yo' returns string 'whatitdo!'" do
      "foo".yo.should eql 'whatitdo!'
    end

    it "'minutes' multiplies self by 60" do
      5.minutes.should eql 300
    end
  end
end
