def choose_producer
    @producer_selected = @prompt.select("Please choose your producer:", %w(BP Gazprom PeMex Vitol Shell))
end

def choose_pickup_location
    @location = @prompt.select("Please choose your location:", %w(Houston Rotterdam New\ Jersey Dallas Vladoska))
end

def liftable_amount
    @liftable_amount = Producer.find_by(producer_name: @producer_selected).amount_liftable
    @prompt.yes?("Please confirm the amount liftable is #{@liftable_amount}")
end

def demand_amount
    @demand = @prompt.ask("Please enter your demand:", convert: :int)
end

def pickup_date
    @date_input = @prompt.ask("Please enter the pick up data as YYYY-MM-DD:")
end

def price_per_bbl_pro
    @price = Producer.find_by(producer_name: @producer_selected).price_per_bbl
    @prompt.yes?("Please confirm the price is #{@price} usd per bbl")
end

def mprcontracts
    puts "\e[H\e[2J"
    choose_producer
    choose_pickup_location
    @rep = Midstream.find_by(user_name: @input_user)
    @producer = Producer.find_by(producer_name:@producer_selected)
    choose_type_of_product
    liftable_amount
    demand_amount
    pickup_date
    if @demand > @liftable_amount + @producer.daily_production * ((Time.parse(@date_input) - Time.now)/3600/24)
        puts "Not enought production, check back later"
        contracts_loop
    else
        price_per_bbl_pro
        @total_price = @price * @demand
        MPrContract.create(midstream_id: @rep.id, producer_id: @producer.id, total_price: @total_price, pickup_date: @date_input.to_date)
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
end
