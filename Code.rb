
require_relative "./SydneyRestaurants"
require "tty-prompt"
require "unicode/emoji"
require "tty-font"
require "colorize"

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
#title
puts pastel.yellow(Font.write("Where  To  Eat?")) #title

continue = true #flag condition

# user details method to call if user is in Sydney
def user_details
    organise()
    puts "\n\nGreat! #{$emoji_list[2]}  Lets start off with your name?"
    user_name = gets.chomp
        
    # error handling - while loop outputting error if numbers/symbols used
        while !user_name.match(/^[[:alpha:]]+$/)
            organise()
            puts "\n\nSorry#{$emoji_list[1]}"
            puts "Please input your first name:"
            user_name = gets.chomp
        end
    organise()
    puts "\n\nHey #{user_name}!"
end

# welcome message
puts "\nWelcome! Let's find you somewhere good to eat.\n#{$emoji_list[7..-1].join" "}".colorize(:light_blue)

choice = {'Yes' => true, 'No' => false}
user_in_sydney = Prompt.select("\nFirstly, are you located in Sydney?", choice)

# if statement - if conditon is false to end program
if user_in_sydney != true
    organise()
    # flag value changed
    continue = false 
    puts "\n\nSorry  #{$emoji_list[0]} , we're only giving recommendations for Sydney for now."
    puts "Check back soon!"
    organise()
else
user_details
end

# while loop begins
while continue == true

    sydney_regions = {"CBD" => CBD, "Inner West" => Inner_west, "Inner City" => Inner_city, "Northern Sydney" => Northern_sydney, "Eastern Suburbs" => Eastern_suburbs, "Southern Sydney" => Southern_sydney, "Western Sydney" => Western_sydney}
    chosen_region = Prompt.select("\nSo, where do you want to eat in Sydney?", sydney_regions)
        
    organise()
            
    puts "\n\nOooo.. #{chosen_region.name}! Great!"

    cuisines = ["Chinese", "Indian", "Japanese", "Italian", "Thai/Vietnamese", "Mexican", "American", "Suprise me"]

    chosen_cuisine = Prompt.select("Now.. what cuisine do you feel like? #{$emoji_list[3]}", cuisines, per_page: 3) 
            
    organise()
        
    # for loop - output chosen region restaurants array at index relevant to cuisine
        for i in 0..chosen_region.restaurants.length-1
            result = chosen_region.restaurants[i]
            # if statement - output following message if user doesn't choose "suprise me"
            if chosen_region.restaurants[i].cuisine == chosen_cuisine && chosen_region.restaurants[i].cuisine != "Suprise me"
            result = chosen_region.restaurants[i]
            puts "\n\n#{chosen_cuisine}! Delicious #{$emoji_list[4]}  Here's your restaurant..\n"
            puts result.name.colorize(:light_blue)
            puts "\nAnd here's the address..\n"
            puts result.address.colorize(:light_blue)
            # if user chooses "suprise me" print last restauraunt in restaurants array in chosen region
            elsif chosen_cuisine == "Suprise me" 
                result = chosen_region.restaurants[-1]
                puts "\n\nOK! If you say so..\n\n"
                puts "Try this #{result.cuisine} restaurant"
                puts result.name.colorize(:light_blue)
                puts "\nAnd here's the address..\n"
                puts result.address.colorize(:light_blue)
                puts
                # break the loop so only last restauraunt in the array is outputted
                break
            end
        end
# if the user wants to try again while loop continues
    re_try = {'Yes' => true, 'No' => false}
    try_again = Prompt.select("\nFeel like something else #{$emoji_list[5]} ?", re_try)
# if user doesn't want to try again end message and change flag value to end loop
    if try_again == false
        organise()
        puts "\n\nEnjoy your meal hun  #{$emoji_list[6]} "
        puts "Come back soon for another delicious restauraunt recommendation!\n"
        puts $emoji_list[7..-1].join" "
        organise()
    continue = false #flag condition set to false to end while loop
    else
        organise()
    puts
    end
end
