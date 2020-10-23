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

    
end
