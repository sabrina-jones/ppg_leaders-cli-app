#CLI controller
class PpgLeaders::CLI

  def call
    puts "Points Per Game Leaders for the Cavaliers"
    list_leaders_cavs
    puts "Points Per Game Leaders for the Warriors"
    list_leaders_warriors
  end

  def list_leaders_cavs
   puts <<-DOC
    1. LeBron James
    2. Kyrie Irving
    3. Kevin Love
   DOC
  end

  def list_leaders_warriors
   puts <<-DOC
    1. Kevin Durant
    2. Stephen Curry
    3. Klay Thompson
   DOC
  end

end
