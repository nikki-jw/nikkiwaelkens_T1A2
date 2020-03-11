require_relative "./SydneyRestaurants"
require "tty-prompt"
require "unicode/emoji"


puts "Welcome! Let's find you somewhere good to eat."

prompt = TTY::Prompt.new
choice = {'Yes' => true, 'No' => false}
user_in_sydney = prompt.select("Firstly, are you located in Sydney?", choice)

if user_in_sydney != true
    puts "Sorry, we're only giving recommendations for Sydney for now."
    puts "Check back soon!"

else 
    puts "Great! Lets start off with your name?"
    user_name = gets.chomp
end

puts "Hey #{user_name}!"

prompt = TTY::Prompt.new
sydney_regions = {"CBD" => CBD.restaurants, "Inner West" => Inner_west.restaurants, "Inner City" = Inner_city.restaurants, "Northern Sydney" => Northern_sydney.restaurants, "Eastern Suburbs" => Eastern_suburbs.restaurants, "Southern Sydney" => Southern_sydney.restaurants, "Western Sydney" => Western_sydney.restaurants}

region_in_sydney = prompt.select("So, where do you want to eat in Sydney?", sydney_regions)
