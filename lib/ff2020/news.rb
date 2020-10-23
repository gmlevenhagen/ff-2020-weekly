class News
    attr_accessor :name, :news, :category, :fantasy_impact


    @@all = []

    def initialize(name, news,category, number = 1, fantasy_impact)
        @name = name
        @news = news
        @category = category
        @number = number
        @fantasy_impact = fantasy_impact
    end

    def self.all
        @@all
    end

    def self.find_by_index(index)
        @@all[index]
      end

      def self.all_news_stories
        @@all.each_with_index do |story, index|
          puts " #{index + 1}"
          story.first_news
          puts ""
          sleep(1)
        end
      end

      
      def first_news
        puts " --------------------------------------------"
        puts " "
        puts "***  Player Name: #{@name} ***"
        puts " "
        puts "***  #{@category} ***"
        puts " "
        puts " -------------"
        puts " Updated News: "
        puts " -------------"
        puts "*  #{@news}"
        puts " "
        puts " "
        puts "--------------------------------------------- "
        puts " "
        puts " "
    end

    def check_update
        if @news == nil
            Scraper.new.scrape_fantasy_news
        end
    end
    

    



end
