class Scraper

url = 'https://www.fantasypros.com/nfl/rankings/qb.php'
html = open(url)
html_parsed_to_elements = NokoGiri::HTML(html)



ranking_variable = html_parsed_to_elements.css("")

ranking_url = ranking_variable.css("")

ranking_variables.each do |ranking_variable|
    rank = ranking_variable.css("sticky-cell")[0].text
    player = ranking_variable.css("player-cell")[0].text
    team = ranking_variable.css("player-cell-team")[0].text
    week_impact = ranking_variable.css("fp-pc-article")[0].text``

Ranking.new(rank, player, team)

end