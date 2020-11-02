class Fantasy
    attr_reader :name


    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def news
        News.all.select {|new| new.fantasy == self}
    end

    def self.find_by_name(name)
        found_fantasy = self.all.find {|fantasy| fantasy.name == name}
        if found_fantasy
            found_fantasy
        else
             self.new(name)
        end
    end

    def get_fantasy_update
        Fantasy.all.each do |update|
          puts "#{@name} - "
          puts " " 
          puts "#{@fantasy_impact}"
          
          
        end
    end
      
    def fantasy_impact
        if !@fantasy_impact
        Scraper.new.scrape_fantasy_news(self)
    end
end


    def self.all
        @@all
    end
    


end