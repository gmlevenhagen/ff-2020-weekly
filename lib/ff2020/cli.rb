class CLI


    def call
        puts ""
        puts "----------------------------------------------------------------"
        puts "    Welcome to the 2020 NFL Fantasy Football News and Injuries!!"
        puts "    ------------------------------------------------------------"
        puts ""
        sleep(2)
        Scraper.new.scrape_news
        menu
    end

    def menu
        puts "Please select news update or fantasy football news impact: "
    puts " "
    puts " 1. Player news/updates"
    puts " 2. Fantasy football updates"
    puts " "
    user_input = gets.chomp
    if user_input == "1"
      News.print_all_reviews_to_be_selected
      puts "Welcome to Player news/updates!!!!"
      news_story = gets.chomp
      select_to_index = news_story.to_i - 1
      News.all[select_to_index].print_full_review
  end

  def goodbye
    puts "Thanks for stopping by! Rankings are updated weekly! See you next time!"
  end
end

