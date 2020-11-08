class CLI 


  def run
    menu
    exit_menu
  end

  def menu
    puts ""
    puts "______________________________________________________________________________________"
    puts "   |                         *************************                            |"
    puts " "
    puts " "
    puts "   |          Welcome to the 2020 NFL Fantasy Football News and Injuries!!        |"
    puts " "
    puts " "
    puts "   |                         *************************                            |"
    puts "______________________________________________________________________________________"
    puts " "
    puts " "
    sleep(1)
    puts Scraper.new.scrape_news.text
    sleep(1)
    puts "_______________________________________________________________________________________"
    puts "             Please select news update or fantasy football news impact: "
    puts " "
    puts "______________________________________________________________________________________"
    puts "   |                         ***************************                          |"
    puts "                      ***       1. Player news/updates      ***"
    puts " "
    puts "_______________________________________________________________________________________"
    puts " "
    puts "                      ***      2. Fantasy football updates  ***"
    puts "   |                         *******************************                      |"
    puts "______________________________________________________________________________________"
    puts " "
    puts "                      ***      3. Exit  ***"
    puts "   |                         *******************************                      |"
    puts "______________________________________________________________________________________"
    puts " "
    input = gets.chomp
  if input == "1" 
    News.all_news_updates
    puts " "
    puts "Please enter numberof update to view news update."
    view_news = gets.chomp
    select_to_index = view_news.to_i
    News.all[select_to_index].print_news_update
  elsif input == "2"
     select_to_index = view_news.to_i
    Fantasy.all[select_to_index].get_fantasy_update
  elsif input = "3"
    puts "Leaving so soon?!"
    select_to_index = view_news.to_i
    exit_menu
  else
    puts "Invalid choice, try again."
    menu
  end



  def select_to_index(input)
    input.to_i - 1
  end


def greeting
    puts ""
    puts "----------------------------------------------------------------"
    puts "    Welcome to the 2020 NFL Fantasy Football News and Injuries!!"
    puts "    ------------------------------------------------------------"
    puts " "
    puts " "
    sleep(2)
    puts Scraper.new.scrape_news.text
    sleep(1)
end

def select_menu
    puts "Please select news update or fantasy football news impact: "
    puts " "
    puts " 1. Player news/updates"
    puts " 2. Fantasy football updates"
    puts " "
end

  def select_to_index(input)
    input.to_i - 1
  end

  
    
  def exit_menu
    puts "Please type 'back' to go back to the menu or type 'exit' to leave."
    input = gets.strip.downcase
    case input
    when "back"
      menu
    when "exit"
      puts " "
      puts " "
      puts " "
      puts "News/Fantasy updates are updating by the minute as they come in. 
        Thanks for stopping by!!!  See you next time!!!"
        puts " "
        puts " "
      else
        puts "I'm sorry, that was an incorrect entry. Please try again."
        exit_menu
      end
    end
  end
end
