require 'spec'
require 'spec/autorun'

class String
  def yo
    'whatitdo!'
  end
end

describe String, "methods" do

  it "'yo' should return string 'whatitdo!'" do
    "foo".yo.should eql 'whatitdo!'
  end
end
