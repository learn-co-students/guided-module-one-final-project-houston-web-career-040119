def welcome_page
    puts "\e[H\e[2J"
    puts "*" * 100
    puts " " * 100
    puts "Welcome to Midstream CLI Application!"
    puts " " * 100
    puts "*" * 100
    @choice = @prompt.select("Choose your option", %w(Login Register Exit))
end

def username
    @input_user = @prompt.ask("Please enter your username")
end

def password
    @input_pw = @prompt.mask("Please enter your password")
end

def choose_purchaser
    @purchaser = @prompt.select("Please choose your location:", %w(Baytown New\ Orleans Humble Gulf\ Coast Fort\ Worth Corpus\ Christi))
end

# chosen_location = choose_location

def choose_type_of_product
    @prompt.select("Please choose your type of product:", %w(Crud D6 Jet\ Fuel Mazut ULSD))
end

def demand_amount
    @prompt.ask("Please enter your demand:")
end


def choose_location
    @location = @prompt.select("Please choose your location:", %w(Baytown New\ Orleans Humble Gulf\ Coast Fort\ Worth Corpus\ Christi))
end
    
    # chosen_location = choose_location
    
def choose_type_of_product
    @product_type = @prompt.select("Please choose your type of product:", %w(Crude D6 Jet\ Fuel Mazut ULSD))
end
    
def demand_amount
    @demand = @prompt.ask("Please enter your demand:")
end


def mpucontracts
    puts "\e[H\e[2J"
    choose_location
    choose_type_of_product
    demand_amount
    @rep = Midstream.find_by(user_name: @input_user)
    @purchaser = Purchaser
    # MPucontract.create()
end




