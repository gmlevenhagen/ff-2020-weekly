class Scraper


    def initialize
        @base_url = "https://www.fantasypros.com"
    end


   def scrape_news
        html = open(@base_url + "/nfl/player-news.php")
        doc = Nokogiri::HTML(html)
        news_updates = doc.css(".player-news-item")
        news_updates.each do |news_update|
            name = news_updates.css('img')[0].values[1]
            news = news_updates.css('p')[2].text
            category = news_updates.css('p')[4].text
            player_url = @base_url + news_updates[0].css("a").attr("href").text
            
            fantasy = Fantasy.find_or_create_by_name(name)
            update = News.new(name, news, category, player_url)  
        end
    end
        

    def scrape_fantasy_news
            fant_html = open(@player_url.to_s)
            fant_html_parsed = Nokogiri::HTML(fant_html)
            impact = fant_html_parsed.css("p")[0].text
            fant_new = fant_html_parsed.css("b")

            fantasy_impact = Fantasy.new(impact, fant_new)
       
        end
    end