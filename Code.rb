
require_relative "./SydneyRestaurants"
require "tty-prompt"
require "unicode/emoji"
Prompt = TTY::Prompt.new
 
continue = true

def organise
    puts 
    60.times {print "_"}
    puts 
end

def user_details
    organise()
    puts "\n\nGreat! Lets start off with your name?"
    user_name = gets.chomp
        
        while !user_name.match(/^[[:alpha:]]+$/)
            organise()
            puts "\n\nSorry"
            puts "Please input your first name:"
            user_name = gets.chomp
        end
    organise()
    puts "\n\nHey #{user_name}!"
end

puts "\n\nWelcome! Let's find you somewhere good to eat."

choice = {'Yes' => true, 'No' => false}
user_in_sydney = Prompt.select("\nFirstly, are you located in Sydney?", choice)

if user_in_sydney != true
    organise()
    continue = false
    puts "\nSorry, we're only giving recommendations for Sydney for now."
    puts "Check back soon!"
else
user_details
end

while continue == true

    sydney_regions = {"CBD" => CBD, "Inner West" => Inner_west, "Inner City" => Inner_city, "Northern Sydney" => Northern_sydney, "Eastern Suburbs" => Eastern_suburbs, "Southern Sydney" => Southern_sydney, "Western Sydney" => Western_sydney}
    chosen_region = Prompt.select("\nSo, where do you want to eat in Sydney?", sydney_regions)
        
    organise()
            
    puts "\n\nOooo.. #{chosen_region.name}! Great!"

    cuisines = ["Chinese", "Indian", "Japanese", "Italian", "Thai/Vietnamese", "Mexican", "American", "I dont know"..]

    chosen_cuisine = Prompt.select("Now.. what cuisine do you feel like?", cuisines, per_page: 3) 
            
    organise()

    puts "\n\n#{chosen_cuisine}! Delicious. Here's your restaurant..\n"

        for i in 0..chosen_region.restaurants.length-1
            if chosen_region.restaurants[i].cuisine == chosen_cuisine
            result = chosen_region.restaurants[i].name 
            puts result
            puts "\nAnd here's the address..\n"
            puts chosen_region.restaurants[i].address
            puts
            end
        end

    re_try = {'Yes' => true, 'No' => false}
    try_again = Prompt.select("Want something else? Try again?", re_try)

    if try_again == false
    continue = false
    else
    organise()
    puts
    end
end

organise()
puts "\n\nEnjoy your meal hun"
puts "Untill next time\n\n"