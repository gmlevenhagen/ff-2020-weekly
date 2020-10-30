class News

  attr_accessor :name, :news, :category, :fantasy_impact


  @@all = []

    def initialize(name, news, category, fantasy_impact)
        @name = name
        @news = news
        @category = category
        @fantasy_impact = fantasy_impact
        @@all << self
    end

    def self.all
      @@all
    end

    def print_news_update
      puts " "
      puts " -----------------------------"
      puts "         ************"
      puts "#{@name} "
      puts "         ************"
      puts " -----------------------------"
      puts " "
      puts "#{@news}"
      puts " "
      puts " #{@category}"
      puts " "
      puts " "
    end

    def self.all_news_updates
      @@all.each_with_index do |update, index|
        puts "Update:  #{index + 1} "
        review.print_news_update
        puts ""
        sleep(1)
      end
    end

    def news_updates
      fantasy_update
      puts "===================="
      print_news_update
      puts "Fantasy Impact: "
      puts " "
      puts " -----------------------------"
      puts "         ************"
      puts "#{@fantasy_impact} "
      puts "         ************"
      puts " -----------------------------"
      puts " "
    end
  
    def fantasy_update
      if @news === nil
        Scraper.new.scrape_fantasy_news(self)
      end
    end
end
