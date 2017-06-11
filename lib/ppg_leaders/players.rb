class PpgLeaders::Players
attr_accessor :name, :jersey, :position
  def self.leaders
    #retun a list of all ppg leaders cavs
    puts <<-DOC
     1. LeBron James
     2. Kyrie Irving
     3. Kevin Love
    DOC

    player_1 = self.new
    player_1.name = "Lebron James"
    player_1.jersey = "23"
    player_1.position = "Forward"

    player_2 = self.new
    player_2.name = "Kyrie Irving"
    player_2.jersey = "2"
    player_2.position = "Guard"

    player_3 = self.new
    player_3.name = "Kevin Love"
    player_3.jersey = "0"
    player_3.position = "Forward"

    [player_1, player_2, player_3]
  end


end
