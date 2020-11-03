class Fantasy

    attr_accessor :name

    @@all = []
    
    def initialize(name)
      @name = name
      @@all << self
    end

    def self.all
        @@all
    end

    def news
        News.all.select {|new| new.fantasy == self}
    end

    def self.find_by_name(name)
        found_name = self.all.find {|fantasy| fantasy.name == name}
        if found_name
            found_name
        else
            self.new(name)
        end
    end

    def self.fantasy_news
        @@all.each_with_index do |fantasy, index|
          puts "Update:  #{index + 1} "
          get_fantasy_update
          puts ""
        end
    end
end
    