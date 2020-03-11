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

])

Inner_west = Region.new("Inner West", [

Restaurant.new("Queen Chow", "Chinese", "2/167 Enmore Road, Enmore NSW 2042"),
Restaurant.new("Delhi 'O' Delhi", "Indian", "3 Erskineville Rd, Newtown NSW 2042")

])


Inner_city = Region.new("Inner City", [

Restaurant.new("Holy Duck", "Chinese", "10/2 Kensington Street, Chippendale NSW 2008"),
Restaurant.new("Lankan Filing Station", "Indian", "Ground Floor/58 Riley St, East Sydney NSW 2010")

])



Northern_sydney = Region.new("Northern Sydney", [

Restaurant.new("Haidilao Hot Pot", "Chinese", "Shop 607 8/1 Anderson St, Chatswood NSW 2067"),
Restaurant.new("Phulkari Indian Cuisine", "Indian", "2/318 Sydney Road, Balgowlah NSW 2093")

])

Southern_sydney = Region.new("Southern Sydney", [

Restaurant.new("Lilong by Taste of Shanghai", "Chinese", "1 PA Park Road & Cross Street, Hurstville NSW 2220"),
Restaurant.new("Moksha", "Indian", "1/523 Box Road, Jannali NSW 2226")

])


Eastern_suburbs = Region.new("Eastern Sydney", [

Restaurant.new("Bambusia", "Chinese", "29 Newland St, Bondi Junction NSW 2022"),
Restaurant.new("The Posh Spice", "Indian", "698-704 Old South Head Rd, Rose Bay NSW 2029")

])


Western_sydney = Region.new("Western Sydney", [

Restaurant.new("Lee Chef Restaurant", "Chinese", "1/140 Church Street, Parramatta NSW 2150"),
Restaurant.new("Seher Indian Restaurant", "Indian", "Shop 5/169-175 Meadows Rd, Mount Pritchard NSW 2170")

])



