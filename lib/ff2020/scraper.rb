require_relative "enviroment.rb"
class Scraper


   def scrape_news
        url = "https://www.fantasypros.com/nfl/player-news.php"
        html = open(url)
        html_parsed_to_elements = Nokogiri::HTML(html)
        ranking_variables = html_parsed_to_elements.css(".player-news-item")

        ranking_variables.each do |ranking_variable|
            name = ranking_variable.css('img')[0].values[1]
            news = ranking_variable.css('p')[2].text
            category = ranking_variable.css('p')[4].text

            news = News.new(name, news, category)

            fantasy = Fantasy.new(fantasy_impact)
        end
    end
        

    def scrape_fantasy_news
            fant_url = ranking_variables[0].css("a").attr("href")
            fant_html = open("https://www.fantasypros.com/nfl/" + fant_url)
            binding.pry
            fant_html_parsed_to_elements = Nokogiri::HTML(fant_html)
            fantasy_impact = fant_html_parsed_to_elements.css("p")[3].text
        end


    end