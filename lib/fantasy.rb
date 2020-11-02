class Fantasy
    attr_accessor :name, :fantasy_impact
   


    @@all = []

    def initialize(name)
        @name = name
        @fantasy_impact = fantasy_impact
        @@all << self
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

    def get_fantasy_update
          puts "#{@name} - "
          puts "_______________"
          puts "#{@fantasy_impact}"
          
        end
    

        def self.fantasy_news
            @@all.each_with_index do |fantasy_impact, index|
              puts "Update:  #{index + 1} "
              get_fantasy_update
              puts ""
              @fantasy_impact
            end
          end

          def get_fantasy_update
            puts "#{@name} - "
            puts "_______________"
            puts "#{@fantasy_impact}"
          end
  

    def self.all
        @@all
    end
    


end