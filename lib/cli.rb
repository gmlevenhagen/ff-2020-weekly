class CLI


    def run
      menu
    end

    def get_player_news
      Scraper.new.scrape_news
    end


    def get_fantasy_update
        Fantasy.all.each do |update|
          puts "#{player.name} - #{fantasy_impacy.number} - #{category}"
        end
        menu
      end


  def exit_menu
      input = gets.strip.downcase
      case input
      when "back"
        get_player_news
      when "exit"
        puts "News/Fantasy updates are updating by the minute as they come in. 
          Thanks for stopping by!!!  See you next time!!!"
      else
        puts "Invalid choice, try again."
        exit_menu
      end
    end
  end

  def menu
    puts ""
      puts "----------------------------------------------------------------"
      puts "    Welcome to the 2020 NFL Fantasy Football News and Injuries!!"
      puts "    ------------------------------------------------------------"
      puts " "
      sleep(1)
      puts "Please select news update or fantasy football news impact: "
      puts " "
      puts " 1. Player news/updates"
      puts " 2. Fantasy football updates"
      puts " "
    input = gets.chomp
    binding.pry
    if input == "1" 
      News.all_news_updates
      puts "Please enter number 1 - 20 to view news update."
      view_news = gets.chomp
      select_to_index = view_news.to_i - 1
      News.all[select_to_index].updated_news
    elsif input == "2"

    else
      puts "Invalid choice, try again."
      menu
    end
  end
