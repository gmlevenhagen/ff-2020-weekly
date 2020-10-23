class News
    attr_accessor :name, :news, :category, :fantasy_impact


    @@all = []

    def initialize(name, news, category, fantasy_impact)
        @name = name
        @news = news
        @category = category
        @fantasy_impact = fantasy_impact
    end

    def self.all
        @@all
    end

    def print_update
        puts "--------------------"
        puts "#{@name}"
        puts "--------------------"
        puts " "
        puts "--------------------"
        puts "#{category}"
        puts "--------------------"
        puts " "
        puts "#{@news}"
    end

    def self.each_player_update
        @@all.each_with_index do |player, index|
            puts "Player update: #{index + 1}"
            player.each_player_update
            puts " "
            puts "--------------------"
            puts " "
        end
    end

    def fantasy_update
        if @fantasy_impact == nil
            Scraper.new.scrape_two(self)
        end
    end

    



end
