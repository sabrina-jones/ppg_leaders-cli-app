class PpgLeaders::Players
attr_accessor :name, :jersey, :position

def self.leaders
   self.scrape_players
end

  def self.scrape_players
  #go to cavs site, find players
  #get player info
  #instantiate the player
  #return array of scraped players
  players = []

  players << self.scrape_james
  players << self.scrape_irving
  players << self.scrape_love

  players
 end

def self.scrape_james
   doc = Nokogiri::HTML(open("http://www.nba.com/players/lebron/james/2544"))
   name = doc.css("p.nba-player-header__first-name").text.strip + " " + doc.css("p.nba-player-header__last-name").text.strip
   jersey = doc.css("span.nba-player-header__jersey-number").text
   position = doc.css("span.nba-player-header__position").text
   binding.pry
end

def self.scrape_irving
  doc = Nokogiri::HTML(open("http://www.nba.com/players/kyrie/irving/202681"))
  name = doc.css("p.nba-player-header__first-name").text.strip + " " + doc.css("p.nba-player-header__last-name").text.strip
  jersey = doc.css("span.nba-player-header__jersey-number").text
  position = doc.css("span.nba-player-header__position").text
end

def self.scrape_love
  doc = Nokogiri::HTML(open("http://www.nba.com/players/kevin/love/201567"))
  name = doc.css("p.nba-player-header__first-name").text.strip + " " + doc.css("p.nba-player-header__last-name").text.strip
  last_name = doc.css("p.nba-player-header__last-name").text.strip
  jersey = doc.css("span.nba-player-header__jersey-number").text
  position = doc.css("span.nba-player-header__position").text
end

end
