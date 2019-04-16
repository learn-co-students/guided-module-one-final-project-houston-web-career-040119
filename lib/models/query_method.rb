def welcome_page
    puts "*" * 36
    puts "Thank you for using Midstream CLI Application!"
    @choice = @prompt.select("Choose your option", %w(Login Register Exit))
end

def username
    puts "\e[H\e[2J"
    @input_user = @prompt.ask("Please enter your username")
end

def password
    puts "\e[H\e[2J"
        @input_pw = @prompt.mask("Please enter your password")
end




def choose_location
    @prompt.select("Please choose your location:", %w(Baytown New\ Orleans Humble Gulft\ Coast Fort\ Worth Corpus\ Christi))
end

# chosen_location = choose_location

def choose_type_of_product
    @prompt.select("Please choose your type of product:", %w(Crud D6 Jet\ Fuel Mazut ULSD))
end

def demand_amount
    @prompt.ask("Please enter your demand:")
end