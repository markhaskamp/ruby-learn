require 'spec'
require 'spec/autorun'

module FooMod
  PI = 3.14159

  def self.life_the_universe_and_everything
    42
  end

  class AClass
    def eddie
      'eddie would go'
    end
    
    def area_of_circle(r)
      PI * r * r
    end

    def kilroy_also
      BClass.new.kilroy
    end
  end

  class BClass
    def kilroy
      'kilroy was here'
    end
  end
end

describe "Modules" do
  
  describe "as namespaces" do
    it "reference module methods as 'module.method'" do
      FooMod.life_the_universe_and_everything.should eql 42
    end

    it "instantiate a class nested in a Module as 'Module::Class.new'" do
      x = FooMod::AClass.new
      x.eddie.should eql 'eddie would go'

      y = FooMod::BClass.new
      y.kilroy.should eql 'kilroy was here'
    end

    it "nested classes don't need the Module prefix to refer to Module constants" do
      x = FooMod::AClass.new
      x.area_of_circle(100).to_int.should eql 31415
    end

    it "nested classes don't need the Module prefix to refer to other nested classes" do
      x = FooMod::AClass.new
      x.kilroy_also.should eql 'kilroy was here'
    end
  end

  describe "as mixins" do
    before :all do
      module TimeInSeconds
        def hours
          self * 60 * 60
        end

        def seconds
          self
        end

        def ago
          previous_time = Time.now.to_i - self
          Time.at(previous_time)
        end
      end

      class Numeric
        include TimeInSeconds
      end
    end

    it "after including module, module methods are available just like class methods" do
      2.hours.should eql(2 * 60 * 60)

      time1 = Time.now.to_i  # seconds since the epoch
      5.seconds.ago.to_i.should be_close(time1 - 5, 1)
      1.hours.ago.to_i.should be_close(time1 - 3600, 1)
    end
  end

  describe "mixin with Missiles" do
    before :all do

      module Missile
        def launch
          "fire!"
        end
      end

      module Missile_Mock
        def launch
          "let's don't and say we did"
        end
      end

      class Missile_Commands
        def self.set_command s
          if s == :forreal
            include Missile
          else
            include Missile_Mock
          end
        end
        def get_target
          "getting target"
        end
      end
    end

    it "should get a target" do
      m = Missile_Commands.new
      m.get_target.should eql "getting target"
    end

    it "launch for real" do
      Missile_Commands.set_command :forreal
      m = Missile_Commands.new
      m.launch.should eql "fire!"
    end

    it "launch a mock" do
      Missile_Commands.set_command :mock
      m = Missile_Commands.new
      m.launch.should eql "let's don't and say we did"
    end

  end
      

end


