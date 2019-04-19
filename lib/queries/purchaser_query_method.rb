require 'pry'



def choose_purchaser
    @purchaser_selected = @prompt.select("Please choose your purchaser:", %w(Exxon\ Mobil National\ Train United\ Airline National\ Train National\ Ship Fedex UPS Flint\ Hill\ Resources))
end


def choose_type_of_product
    @product_selected = @prompt.select("Please choose your type of product:", %w(Crude D6 Jet\ Fuel Mazut ULSD))
end

def demand_amount
    @demand = @prompt.ask("Please enter your demand:", convert: :int)
end


def choose_delivery_location
    @location_selected = @prompt.select("Please choose your location:", %w(Baytown New\ Orleans Humble Gulf\ Coast Fort\ Worth Corpus\ Christi))
end
    
    

def price_per_bbl_pur
    @price = Purchaser.find_by(purchaser_name: @purchaser_selected).price_per_bbl
    @prompt.yes?("Please confirm the price is #{@price} usd per bbl")
end

def delivery_date
    @date_input = @prompt.ask("Please enter the delivery data as YYYY-MM-DD:")
end

def mpucontracts
    puts "\e[H\e[2J"
    choose_purchaser
    choose_delivery_location
    choose_type_of_product
    demand_amount
    price_per_bbl_pur
    delivery_date
    @rep = Midstream.find_by(user_name: @input_user)
    @purchaser = Purchaser.find_by(purchaser_name:@purchaser_selected)
    MPuContract.create(midstream_id: @rep.id, purchaser_id: @purchaser.id, total_price: @price * @demand, delivery_date: @date_input.to_date)
    puts "\e[H\e[2J"
    puts "=" * 100
    puts " "
    puts "Contract has been made!"
    puts " "
    puts "=" * 100
    case @prompt.select("Choose your option", %w(Previous Exit))
    when "Previous"
        user_menu_loop
    else
        exit
    end
end





