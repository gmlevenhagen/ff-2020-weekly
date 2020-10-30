class Fantasy
    attr_accessor :name


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
            return found_fantasy
        else
            return self.new(name)
        end
    end

    def self.all
        @@all
    end
    


end
