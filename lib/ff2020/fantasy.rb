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

    def fantasy
        News.all.select {|news| news.fantasy == self}
      end

    def self.find_update_by_number(number)
       found_update = all.find {|update| update.number == number}
       if found_update
        return  
    end


end
