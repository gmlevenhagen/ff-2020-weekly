class News

  attr_reader :name, :news, :category

  @@all = []

    def initialize(name, news, category)
        @name = name
        @news = news
        @category = category
        @@all << self
    end

    def self.all
      @@all
    end

    def self.all_news_updates
      @@all.each_with_index do |update, index|
        puts "Update:  #{index - 1} "
        update.print_news_update
        puts ""
      end
    end

    def print_news_update 
      fantasy_updates
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

    def get_fantasy_update
      fantasy_updates
      puts " "
      puts " __________________________"
      puts "***       #{@name} "      
      puts "___________________________"
      puts " #{@news}"
      puts " "
    end


    def fantasy_updates
      if !@news
        Scraper.new.scrape_fantasy_news(self)
      end
    end

  end