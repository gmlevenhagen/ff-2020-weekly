class Fantasy

    attr_accessor :name, :impact, :fant_new

    @@all = []
    
    def initialize(impact)
      @impact= impact
      @fant_new = fant_new
      @@all << self
    end

    def self.all
        @@all
    end

    def news
        News.all.select {|update| update.fantasy == self}
    end

    def self.find_or_create_by_name(name)
        found_name = self.all.find {|fantasy| fantasy.name == name}
        if found_name
            found_name
        else
            self.new(name)
        end
    end

    def get_fantasy_update
        puts " "
        puts "________________________________________"
        puts "#{@impact} "
        puts "#{@fant_new}"
        puts " "
      end
  
      
end
    