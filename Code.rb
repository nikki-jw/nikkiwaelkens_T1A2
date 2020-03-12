
require_relative "./SydneyRestaurants"
require "tty-prompt"
require "unicode/emoji"
require "tty-font"
Prompt = TTY::Prompt.new
Font = TTY::Font.new(:standard)

emojis = "😭 🥺 😁 🤔 🤤 😮 🤩 🌮 🍝 🥗 🍗 🍕 🍱 🥐 🍲 🍣 🥘 🥙 🍔 🍜"
$emoji_list = emojis.scan(Unicode::Emoji::REGEX)

def organise
    puts 
    60.times {print "_"}
    puts 
end

puts
puts
pastel = Pastel.new
puts pastel.yellow(Font.write("Where  To  Eat?"))

continue = true

def user_details
    organise()
    puts "\n\nGreat! #{$emoji_list[2]}  Lets start off with your name?"
    user_name = gets.chomp
        
        while !user_name.match(/^[[:alpha:]]+$/)
            organise()
            puts "\n\nSorry#{$emoji_list[1]}"
            puts "Please input your first name:"
            user_name = gets.chomp
        end
    organise()
    puts "\n\nHey #{user_name}!"
end

puts "\nWelcome! Let's find you somewhere good to eat.\n #{$emoji_list[7..-1].join" "}"

choice = {'Yes' => true, 'No' => false}
user_in_sydney = Prompt.select("\nFirstly, are you located in Sydney?", choice)

if user_in_sydney != true
    organise()
    continue = false
    puts "\n\nSorry  #{$emoji_list[0]} , we're only giving recommendations for Sydney for now."
    puts "Check back soon!"
    organise()
else
user_details
end

while continue == true

    sydney_regions = {"CBD" => CBD, "Inner West" => Inner_west, "Inner City" => Inner_city, "Northern Sydney" => Northern_sydney, "Eastern Suburbs" => Eastern_suburbs, "Southern Sydney" => Southern_sydney, "Western Sydney" => Western_sydney}
    chosen_region = Prompt.select("\nSo, where do you want to eat in Sydney?", sydney_regions)
        
    organise()
            
    puts "\n\nOooo.. #{chosen_region.name}! Great!"

    cuisines = ["Chinese", "Indian", "Japanese", "Italian", "Thai/Vietnamese", "Mexican", "American", "Suprise me"]

    chosen_cuisine = Prompt.select("Now.. what cuisine do you feel like? #{$emoji_list[3]}", cuisines, per_page: 3) 
            
    organise()
        
        for i in 0..chosen_region.restaurants.length-1
            result = chosen_region.restaurants[i]
            if chosen_region.restaurants[i].cuisine == chosen_cuisine && chosen_region.restaurants[i].cuisine != "Suprise me"
            result = chosen_region.restaurants[i]
            puts "\n\n#{chosen_cuisine}! Delicious #{$emoji_list[4]}  Here's your restaurant..\n\n"
            puts result.name
            puts "\nAnd here's the address..\n"
            puts result.address
            
            elsif chosen_cuisine == "Suprise me" 
                result = chosen_region.restaurants[-1]
                puts "\n\nOK! If you say so..\n\n"
                puts "Try this #{result.cuisine} restaurant"
                puts result.name
                puts "\nAnd here's the address..\n"
                puts result.address
                puts
                break
            end
        end

    re_try = {'Yes' => true, 'No' => false}
    try_again = Prompt.select("\nFeel like something else #{$emoji_list[5]} ?", re_try)

    if try_again == false
        organise()
        puts "\n\nEnjoy your meal at #{result.name} hun  #{$emoji_list[6]} "
        puts "Come back soon for another delicious restauraunt recommendation!\n"
        organise()
    continue = false
    else
        organise()
    puts
    end
end

