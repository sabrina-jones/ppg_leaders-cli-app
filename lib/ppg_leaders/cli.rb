#CLI controller
class PpgLeaders::CLI

  def call
    list_leaders
    player_info
  end

  def list_leaders
   puts "Points Per Game Leaders for the Cavaliers"
   @players = PpgLeaders::Players.leaders
   @players.each.with_index(1) do |player, index|
     puts "#{index}. #{player.name} - #{player.jersey} - #{player.position}"
   end
  end


  def player_info
    input = nil
    while input != "exit"
    puts "Enter the number of the player you'd like to know more about, type list to see the list again or type exit:"
    input = gets.chomp

    if input.to_i == 1 || input.to_i == 2 || input.to_i == 3
     the_player = @players[input.to_i-1]
     puts "#{the_player.name} - #{the_player.jersey} - #{the_player.position}"
     #puts "this is more info!!"
   elsif input == "list"
      list_leaders
   elsif input == "exit"
        exit_player
    else
      puts "Not valid input enter list or exit"
    end
  end
end

def exit_player
  puts "Come back and get more info on your favorite leading scorers"
end

end
