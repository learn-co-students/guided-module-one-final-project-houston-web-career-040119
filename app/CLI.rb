require_relative '../config/environment'
require 'tty-prompt'

@prompt = TTY::Prompt.new

require_relative '../lib/models/query_method.rb'


#option for login or register 

welcome_page
if @choice == "Login"
    username
    if Midstream.find_by(user_name:@input_user)
        password
        if Midstream.find_by(password:@input_pw)
            puts "\e[H\e[2J"
            choose_location
            choose_type_of_product
            @demand = demand_amount
        end
    end
elsif @choice == "Register"
    puts "\e[H\e[2J"
    username
    if Midstream.find_by(user_name:@input_user)
        puts "User already exists, please login"
        @choice1 = @prompt.select("Choose your option", %w(Login Exit))
        if @choice1 == "Login"
            welcome_page
        else
            puts "Thank you for using "
        end
    else
        @newusername = @input_user
        @newpassword = @input_pw
        Midstream.create()

    end
end







# choice = @prompt.select("Choose your option", %w(Login Register Exit))

#     puts "\e[H\e[2J"
#     input_user = @prompt.ask("Please enter your username")
#     if Midstream.find_by(user_name:input_user)
#         puts "\e[H\e[2J"
#         input_pw = @prompt.mask("Please enter your password")
#         if Midstream.find_by(password:input_pw)
#             puts "\e[H\e[2J"
#             choose_location
#             choose_type_of_product
#             @demand = demand_amount
#             # if @demand < 
            
#         end
#     else 
#         puts "user dose not exit, please register or exit"
#     end





