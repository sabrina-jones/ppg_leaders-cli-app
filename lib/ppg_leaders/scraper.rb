class PpgLeaders::Scraper


  def self.scrape_players
    #go to cavs site, find players
    #get player info
    #instantiate the player
    #return array of scraped players
    #players = []

    self.scrape_james
    self.scrape_irving
    self.scrape_love

    #players
   end

  def self.scrape_james
     doc = Nokogiri::HTML(open("http://www.nba.com/players/lebron/james/2544"))
     player_1 = PpgLeaders::Player.new  #self.new
     player_1.name = doc.css("p.nba-player-header__first-name").text.strip + " " + doc.css("p.nba-player-header__last-name").text.strip
     player_1.jersey = doc.css("span.nba-player-header__jersey-number").text
     player_1.position = doc.css("span.nba-player-header__position").text
     player_1.more_info = doc.css("section.nba-player-detail__bio").css("p").text.slice(0,203).strip

     #player_1
     #binding.pry
  end

  def self.scrape_irving
    doc = Nokogiri::HTML(open("http://www.nba.com/players/kyrie/irving/202681"))
    player_2 = PpgLeaders::Player.new
    player_2.name = doc.css("p.nba-player-header__first-name").text.strip + " " + doc.css("p.nba-player-header__last-name").text.strip
    player_2.jersey = doc.css("span.nba-player-header__jersey-number").text
    player_2.position = doc.css("span.nba-player-header__position").text
    player_2.more_info = doc.css("section.nba-player-detail__bio").css("p").text.slice(0,203).strip
    #binding.pry

  end

  def self.scrape_love
    doc = Nokogiri::HTML(open("http://www.nba.com/players/kevin/love/201567"))
    player_3 = PpgLeaders::Player.new
    player_3.name = doc.css("p.nba-player-header__first-name").text.strip + " " + doc.css("p.nba-player-header__last-name").text.strip
    player_3.jersey = doc.css("span.nba-player-header__jersey-number").text
    player_3.position = doc.css("span.nba-player-header__position").text
    player_3.more_info = doc.css("section.nba-player-detail__bio").css("p").text.slice(0,204).strip

  end


end
