class CLI


  def run
    menu
    exit_menu
  end

  def menu
    puts ""
      puts "----------------------------------------------------------------"
      puts "    Welcome to the 2020 NFL Fantasy Football News and Injuries!!"
      puts "    ------------------------------------------------------------"
      puts " "
      puts " "
      sleep(2)
      puts Scraper.new.scrape_news.text
      sleep(1)
      puts "Please select news update or fantasy football news impact: "
      puts " "
      puts " 1. Player news/updates"
      puts " 2. Fantasy football updates"
      puts " "
    input = gets.chomp
    if input == "1" 
      puts "Please enter number 1 - 20 to view news update."
      view_news = gets.chomp
      select_to_index = view_news.to_i
      News.all[select_to_index].print_news_update
    elsif input == "2"
      
    else
      puts "Invalid choice, try again."
      menu
    end


    
    def get_fantasy_update
        Fantasy.all.each do |update|
          puts "#{player.name} - #{fantasy_impact.number} - #{category}"
        end
        menu
      end


    def exit_menu
      puts "Please type 'back' to go back to the menu or type 'exit' to leave."
      input = gets.strip.downcase
      case input
      when "back"
        menu
      when "exit"
        puts "News/Fantasy updates are updating by the minute as they come in. 
          Thanks for stopping by!!!  See you next time!!!"
      else
        puts "Invalid choice, try again."
        exit_menu
      end
    end
  end
  end
