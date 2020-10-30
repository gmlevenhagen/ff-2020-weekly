class Scraper

   def scrape_news
        url = "https://www.fantasypros.com/player-news.php"
        html = open(url)
        html_parsed_to_elements = Nokogiri::HTML(url)
        news_updates = html_parsed_to_elements.css(".player-news-item")
        news_updates.each do |news_update|
            name = ranking_variable.css('img')[0].values[1]
            news = ranking_variable.css('p')[2].text
            category = ranking_variable.css('p')[4].text
            fant_url = ranking_variables[0].css("a").attr("href")

        updated_news = News.new(name, news, category)
        end
    end
        

    def scrape_fantasy_news(fant_url)
            fant_html = open(@start_url + fant_url)
            fant_html_parsed_to_elements = Nokogiri::HTML(fant_html)
            fantasy_impact = fant_html_parsed_to_elements.css("p")[3].text
            return {fantasy_impact: fantasy_impact}
        end
    end