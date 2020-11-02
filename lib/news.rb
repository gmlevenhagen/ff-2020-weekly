class News

  attr_reader :name, :news, :category, :fantasy_impact 


  @@all = []

    def initialize(name, news, category)
        @name = name
        @news = news
        @category = category
        @fantasy_impact = fantasy_impact
        @@all << self
    end

    def self.all
      @@all
    end

    def self.all_news_updates
      @@all.each_with_index do |update, index|
        puts "Update:  #{index + 1} "
        print_news_update
        puts ""
        @news
      end
    end

    def print_news_update 
      puts " "
      puts " -----------------------------"
      puts "         ************"
      puts "          #{@name} "
      puts "         ************"
      puts " -----------------------------"
      puts " "
      puts "#{@news}"
      puts " "
      puts "#{@category}"
      puts " "
      puts " "
    end

  
    def fantasy_update
      if !@news
        Scraper.new.scrape_fantasy_news(self)
      end
    end

   
end
