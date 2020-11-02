class Scraper

   def scrape_news
        url = "https://www.fantasypros.com"
        html = open(url + "/nfl/player-news.php")
        doc = Nokogiri::HTML(html)
        news_updates = doc.css(".player-news-item")

        news_updates.each do |player|
            name = news_updates.css('img')[0].values[1]
            news = news_updates.css('p')[2].text
            category = news_updates.css('p')[4].text
            player_url = news_updates[0].css("a").attr("href")
            
            update = News.new(name, news, category)
            fantasy_name_update = Fantasy.find_by_name(name)
        end
    end
        

    def scrape_fantasy_news(update)
            fant_html = open(url + update.player_url)
            fant_html_parsed = Nokogiri::HTML(fant_html)
            fantasy_impact = fant_html_parsed.css("p")[3].text

            fantasy_news_update = Fantasy.new(fantasy_impact)

        end
    end