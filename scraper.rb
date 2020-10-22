require_relative "enviroment.rb"
class Scraper

    def initialize
        @base_url = "https://www.fantasypros.com"
    end

    def scrape_one
        url = "https://www.fantasypros.com/nfl/player-news.php"
        html = open(url)
        html_parsed_to_elements = Nokogiri::HTML(html)
        ranking_variables = html_parsed_to_elements.css(".player-news-item")

        ranking_variables.each do |ranking_variable|
            name = ranking_variable.css('img')[0].values[1]
            news = ranking_variable.css('p')[2].text
            category = ranking_variable.css('p')[4].text


   fant_url = ranking_variables[0].css("a").attr("href")
   fant_html = open("https://www.fantasypros.com/nfl/player-news.php" + fant_url)
   fant_html_parsed_to_elements = Nokogiri::HTML(fant_html)
   fantasy_impact = fant_html_parsed_to_elements.css("p")[3].text
 
    CLI.new(name, news, category, fantasy_impact)


    
end



end

