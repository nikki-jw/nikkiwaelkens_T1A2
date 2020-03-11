class Region
    attr_accessor :name, :restaurants

    def initialize(name, restaurants)
        @name = name
        @restaurants = restaurants
    end
end

class Restaurant 
    attr_accessor :name, :cuisine, :address

    def initialize(name, cuisine, address)
        @name = name
        @cuisine = cuisine
        @address = address
    end
end

CBD = Region.new("CBD", [
Restaurant.new("Mr Wong","Chinese","3 Bridge Ln, Sydney NSW 2000"),
Restaurant.new("The Grand Pavilion", "Indian", "261 George St, Sydney NSW 2000")
Restaurant.new("Sake", "Japanese", "12 Argyle St, The Rocks NSW 2000")
Restaurant.new("Belles Hot Chicken", "American", "5/33 Barangaroo Ave, Barangaroo NSW 2000")
Restaurant.new("Mejico", "Mexican", "105 Pitt St, Sydney NSW 2000")
Restaurant.new("Machiavelli Ristorante Italiano", "Italian", "123 Clarence St, Sydney NSW 2000")
Restaurant.new("Chat Thai", "Thai/Vietnamese", "20 Campbell St, Haymarket NSW 2000")
Restaurant.new()
])

Inner_west = Region.new("Inner West", [

Restaurant.new("Queen Chow", "Chinese", "2/167 Enmore Road, Enmore NSW 2042"),
Restaurant.new("Delhi 'O' Delhi", "Indian", "3 Erskineville Rd, Newtown NSW 2042")
Restaurant.new("Japanese Kitchen Sakae", "Japanese", "303 Illawarra Rd, Marrickville NSW 2204")
Restaurant.new("Baby Rey's Burger", "American", "25 Cadogan St, Marrickville NSW 2204")
Restaurant.new("Tamaleria and Mexican Deli", "Mexican", "463 Marrickville Rd, Dulwich Hill NSW 2203")
Restaurant.new("Bella Brutta", "Italian", "135 King St, Newtown NSW 2042")
Restaurant.new("Hello Auntie", "Thai/Vietnamese", "278 Illawarra Rd, Marrickville NSW 2204")
Restaurant.new()
])


Inner_city = Region.new("Inner City", [

Restaurant.new("Holy Duck", "Chinese", "10/2 Kensington Street, Chippendale NSW 2008"),
Restaurant.new("Lankan Filing Station", "Indian", "Ground Floor/58 Riley St, East Sydney NSW 2010")
Restaurant.new("Toko", "Japanese", "490 Crown St, Surry Hills NSW 2010")
Restaurant.new("Thirsty Bird", "American", "3/2-14 Bayswater Rd, Potts Point NSW 2011")
Restaurant.new("Mexican Burrrito Cantina", "Mexican", "567 Crown St, Surry Hills NSW 2010")
Restaurant.new("Origano Wood Fire Pizza", "Italian", "107 McEvoy St, Alexandria NSW 2015")
Restaurant.new("Thai Rock", "Thai/Vietnamese", "28 Bayswater Rd, Potts Point NSW 2011")
Restaurant.new()
])



Northern_sydney = Region.new("Northern Sydney", [

Restaurant.new("Haidilao Hot Pot", "Chinese", "Shop 607 8/1 Anderson St, Chatswood NSW 2067"),
Restaurant.new("Phulkari Indian Cuisine", "Indian", "2/318 Sydney Road, Balgowlah NSW 2093")
Restaurant.new()
Restaurant.new()
Restaurant.new()
Restaurant.new()
Restaurant.new()
Restaurant.new()
])

Southern_sydney = Region.new("Southern Sydney", [

Restaurant.new("Lilong by Taste of Shanghai", "Chinese", "1 PA Park Road & Cross Street, Hurstville NSW 2220"),
Restaurant.new("Moksha", "Indian", "1/523 Box Road, Jannali NSW 2226")
Restaurant.new("Ryo's Noodles", "Japanese", "125 Falcon St, Crows Nest NSW 2065")
Restaurant.new("Five Points Burgers", "American", "124 Walker St, North Sydney NSW 2060")
Restaurant.new("Chica Bonita", "Mexican", "9 The Corso, Manly NSW 2095")
Restaurant.new("Ride on Pizzeria", "Italian", "Shop 8/81 Military Rd, Neutral Bay NSW 2089")
Restaurant.new("Bangok Betty", "Thai/Vietnamese", "242 Military Rd, Neutral Bay NSW 2089")
Restaurant.new()
])


Eastern_suburbs = Region.new("Eastern Sydney", [

Restaurant.new("Bambusia", "Chinese", "29 Newland St, Bondi Junction NSW 2022"),
Restaurant.new("The Posh Spice", "Indian", "698-704 Old South Head Rd, Rose Bay NSW 2029")
Restaurant.new("Raw Bar", "Japanese", "1/136 Warners Ave, Bondi NSW 2026")
Restaurant.new("Bonditony's Burger Joint", "American", "1/144-148 Glenayr Ave, Bondi Beach NSW 2026")
Restaurant.new("Carbon Mexican Woodfire", "Mexican", "288 Bondi Rd, Bondi NSW 2026")
Restaurant.new("Totti's", "Italian", "283 Bondi Rd, Bondi NSW 2026")
Restaurant.new("Bonanza Thai", "Thai/Vietnamese", "9 Albion St, Waverley NSW 2024")
Restaurant.new()
])


Western_sydney = Region.new("Western Sydney", [

Restaurant.new("Lee Chef Restaurant", "Chinese", "1/140 Church Street, Parramatta NSW 2150"),
Restaurant.new("Seher Indian Restaurant", "Indian", "Shop 5/169-175 Meadows Rd, Mount Pritchard NSW 2170")
Restaurant.new("Hanamaruya", "Japanese", "286 Chapel Rd, Bankstown NSW 2200")
Restaurant.new("Blackbear BBQ", "American", "11/27 Forge St, Blacktown NSW 2148")
Restaurant.new()
Restaurant.new("Il Piatto Restaurant", "Italian", "1766-1768 The Horsley Dr, Horsley Park NSW 2175")
Restaurant.new("Holy Basil", "Thai/Vietnamese", "233A Canley Vale Rd, Canley Heights NSW 2166")
Restaurant.new()
])



