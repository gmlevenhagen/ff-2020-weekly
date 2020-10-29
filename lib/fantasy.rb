class Fantasy
    attr_accessor :name


    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def news
        News.all.select {|news| news.fanasty == self}
    end

    def self.find_update_by_category(name)
        found_category = self.all.find {|category| category.name == name}
        if found_category
            return found_category
        else
            return self.new(name)
        end
    end
    


end
