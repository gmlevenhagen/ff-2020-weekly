require_relative "enviroment.rb"
class Scraper
    attr_accessor :url, :html, :html_parsed_to_elements, :ranking_variable

url = "https://www.fantasypros.com/nfl/player-news.php"
html = open(url)
html_parsed_to_elements = Nokogiri::HTML(html)
ranking_variables = html_parsed_to_elements.css(".player-news-item")

ranking_variables.each do |ranking_variable|
   
    puts " "
    puts " "
    puts " "
    puts " "
    puts " "
    puts "----------------------------------------------------------------------------"
    puts " "
    puts " "
    puts "****   Player Name/Info Page:  #{ranking_variable.css('img')[0].values}"
    puts " "
    puts " "
    puts " "
    puts "**************************************"
    puts " "
    puts " "
    puts " "
    puts "****   News Update: #{ranking_variable.css('p')[2].text}"
    puts " "
    puts " "
    puts " "
    puts "*************************************"
    puts " "
    puts "****   #{ranking_variable.css('p')[3].text}"
    puts " "
    puts " "
    puts " "
    puts "*****  #{ranking_variable.css('p')[4].text}"
    puts "*************************************"
    puts " "
    puts "----------------------------------------------------------------------------"
    puts " "
    puts " "
    puts " "
    puts " "
 
end


end

