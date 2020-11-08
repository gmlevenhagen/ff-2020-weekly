class News

  attr_reader :name, :news, :category, :player_url, :impact

  @@all = []

    def initialize(name, news, category, player_url)
        @name = name
        @news = news
        @category = category
        @player_url = player_url
        @@all << self
    end

    def self.all
      @@all
    end

    def self.all_news_updates
      @@all.each_with_index do |update, index|
        puts "Update:  #{index + 1} "
        update.print_news_update
        puts ""
      end
    end

    def print_news_update 
      puts " "
      puts " -----------------------------"
      puts "    ************"
      puts "     #{name} "
      puts "    ************"
      puts " #{player_url}"
      puts " -----------------------------"
      puts " #{news}"
      puts " "
    end


    def fantasy_updates
      if !@news
        Scraper.new.scrape_fantasy_news(self)
      end
    end

  end