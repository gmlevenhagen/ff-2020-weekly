require_relative "enviroment.rb"
class Scraper

    def initialize
        @start_url = "https://www.fantasypros.com"

   def scrape_news
        html = open(@start_url + "/player-news.php")
        html_parsed_to_elements = Nokogiri::HTML(html)
        ranking_variables = html_parsed_to_elements.css(".player-news-item")

        ranking_variables.each do |ranking_variable|
            name = ranking_variable.css('img')[0].values[1]
            news = ranking_variable.css('p')[2].text
            category = ranking_variable.css('p')[4].text
            fant_url = ranking_variables[0].css("a").attr("href")

            news_and_fantasy_hash = self.scrape_fantasy_news(fant_url)

        fantasy_news = Fantasy.find_or_create(category)

        news = News.new(name, news, category, news_and_fantasy_hash[:fantasy_impact])

        puts " --------------------------------------------"
        puts " "
        puts "***  Player Name: #{@name} ***"
        puts " "
        puts "***  #{@category} ***"
        puts " "
        puts " -------------"
        puts " Updated News: "
        puts " -------------"
        puts "*  #{@news}"
        puts " "
        puts " "
        puts "--------------------------------------------- "
        puts " "
        puts "* #{@fantasy_impact}"
        puts "--------------------------------------------- "
        puts " "
    end

        end
    end
        

    def scrape_fantasy_news(fant_url)
            fant_html = open(@start_url + fant_url)
            fant_html_parsed_to_elements = Nokogiri::HTML(fant_html)
            fantasy_impact = fant_html_parsed_to_elements.css("p")[3].text
            return {fantasy_impact: fantasy_impact}
        end


    end