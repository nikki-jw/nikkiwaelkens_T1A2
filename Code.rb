require_relative "./SydneyRestaurants"
require "tty-prompt"
require "unicode/emoji"
Prompt = TTY::Prompt.new

puts "Welcome! Let's find you somewhere good to eat."

choice = {'Yes' => true, 'No' => false}
user_in_sydney = Prompt.select("Firstly, are you located in Sydney?", choice)

if user_in_sydney != true
    puts "Sorry, we're only giving recommendations for Sydney for now."
    puts "Check back soon!"

else 
    puts "Great! Lets start off with your name?"
    user_name = gets.chomp
end

puts "Hey #{user_name}!"

sydney_regions = {"CBD" => CBD, "Inner West" => Inner_west, "Inner City" => Inner_city, "Northern Sydney" => Northern_sydney, "Eastern Suburbs" => Eastern_suburbs, "Southern Sydney" => Southern_sydney, "Western Sydney" => Western_sydney}

chosen_region = Prompt.select("So, where do you want to eat in Sydney?", sydney_regions)

puts "Oooo.. #{chosen_region.name}! Great!"

cuisines = ["Chinese", "Indian", "Japanese", "Italian", "Thai/Vietnamese", "Mexican", "American", "I dont know"..]

chosen_cuisine = Prompt.select("Now.. what cuisine do you feel like?", cuisines, per_page: 3) 

puts "#{chosen_cuisine}! Delicious. Let me bring up a restaurant.."

for i in 0..chosen_region.restaurants.length-1
    if chosen_region.restaurants[i].cuisine == chosen_cuisine
        puts chosen_region.restaurants[i].name 
        puts chosen_region.restaurants[i].address
    end
end


