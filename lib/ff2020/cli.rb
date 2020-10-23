require_relative "enviroment.rb"
class CLI

    def initialize(name, news, category, fantasy_impact)
        @name = name
        @news = news
        @category = category
        @fantasy_impact = fantasy_impact
    end

    def first_news
        puts " --------------------------------------------"
        puts " "
        puts "***  Player Name: #{name} ***"
        puts " "
        puts "***  #{category} ***"
        puts " "
        puts " -------------"
        puts " Updated News: "
        puts " -------------"
        puts "*  #{news}"
        puts " "
        puts " "
        puts "--------------------------------------------- "
        puts " "
        puts " "
    end

    def second_news
        puts "#{fantasy_impact}"
        puts " "
        puts " "
    end
end

