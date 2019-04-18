require_relative '../config/environment'
require 'tty-prompt'
require 'pry'

@prompt = TTY::Prompt.new

# require_relative '../lib/models/query_method.rb'
# require_relative '../lib/models/run_loops.rb'
require_all 'lib'
$quit = false

#option for login or register 

def main_menu
    while(!$quit)
        case welcome_page
        when "Login"
            puts "\e[H\e[2J"
            login_loop
        when "Register"
            puts "\e[H\e[2J"
            register_loop
        when "Exit"
            exit
        end
    end
end

main_menu








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





