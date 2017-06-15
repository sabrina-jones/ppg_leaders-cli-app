class PpgLeaders::Player
attr_accessor :name, :jersey, :position, :more_info

@@leaders = []

def self.leaders
   @@leaders
end

def initialize
 @@leaders << self
end



end
