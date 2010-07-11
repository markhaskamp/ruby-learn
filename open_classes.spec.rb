require 'spec'
require 'spec/autorun'

class String
  def yo
    'whatitdo!'
  end
end

class Fixnum
  def minutes
    self * 60
  end
end

describe "Open Classes" do

  it "'yo' returns string 'whatitdo!'" do
    "foo".yo.should eql 'whatitdo!'
  end

  it "'minutes' multiplies self by 60" do
    5.minutes.should eql 300
  end
end
