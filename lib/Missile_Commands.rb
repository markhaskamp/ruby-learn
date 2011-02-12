require 'Missile.rb'
require 'Missile_Mock.rb'

class Missile_Commands
  if ENV["TEST"]
    include Missile_Mock
  else
    include Missile
  end

  def get_target
    "getting target"
  end
end
