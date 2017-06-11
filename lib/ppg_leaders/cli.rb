#CLI controller
class PpgLeaders::CLI

  def call
    list_leaders
    player_info
    exit_player
  end

  def list_leaders
   puts "Points Per Game Leaders for the Cavaliers"
   @players = PpgLeaders::Players.leaders
  end


  def player_info
    input = nil
    while input != "exit"
    puts "Enter the name of the player you'd like to know more about, type list to see the list again or type exit:"
    input = gets.chomp
    case input
    when "James"
      puts "More on LeBron"
    when "Irving"
      puts "More on Irving"
    when "Love"
      puts "More on Love"
    when "list"
      list_leaders
    else
      puts "Not valid input enter list or exit"
    end
  end
end

def exit_player
  puts "Come back and get more info on your favorite leading scorers"
end

end
