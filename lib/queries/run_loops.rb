def login_loop
    username
    if Midstream.find_by(user_name:@input_user) != nil
        password
        if Midstream.find_by(password:@input_pw) != nil
            user_menu_loop
        else 
            until Midstream.find_by(password:@input_pw) != nil
                puts "Wrong password, please enter again:"
                password
            end
            mpucontracts
        end
    else
        puts "User does not exist, please register first."
        register_loop
    end
end

def register_loop
    username
    if Midstream.find_by(user_name:@input_user)
        puts "User already exists, please login"
        case @prompt.select("Please choose your option", %w(Login Exit))
        when "Login"
            login_loop
        else
            exit
        end
    elsif
        @input_user == nil || input_user.include(" ")
        puts "User name cannot contain space, please try again"
        register_loop
    else
        password
        @name = @prompt.ask("Please enter your full name:")
        Midstream.create(rep_name: @name, user_name: @input_user, password: @input_pw)
        puts "User created, please login."
        login_loop
    end
end


def user_menu_loop
    case user_menu
    when "Logout"
        main_menu
    when "Contracts"
        contracts_loop               
    else
        # puts "<" * 100
        # puts " "
        # puts "Under construction!"
        # puts " "
        # puts ">" * 100
        account_management_menu_loop
    end
end

def account_management_menu_loop
    case account_management_menu
    when "Account Info"
        account_info
            case @prompt.select("", %w(Previous))
            when "Previous"
                puts "\e[H\e[2J"
                account_management_menu_loop
            end
    when "Change Password"
        password
        if Midstream.find_by(user_name: @input_user).password == @input_pw
            new_password_loop
        else
            puts "Wrong Password!"
            main_menu
        end
    else
        puts "\e[H\e[2J"
        user_menu_loop
    end
end

def new_password_loop
    new_password
    if @input_npw1 == @input_npw2 && input_npw1 != input_pw

    elsif @input_npw1 == @input_npw2 && @input_npw2 == input_pw
        puts "Password doesn't change please try again!"
        new_password_loop
    else
        puts "Password doesn't match, please try again!"
        new_password_loop
    end
end




def contracts_loop
    case contracts_menu
    when "Create Contract w Purchaser"
        mpucontracts
    when "Create Contract w Producer"
        mprcontracts
    when "All Contracts"
        case all_contracts
        when "Previous"
            puts "\e[H\e[2J"
            contracts_loop
        when "Exit"
            exit
        end
    when "Future Contracts"
        case future_contracts
        when "Previous"
            puts "\e[H\e[2J"
            contracts_loop
        when "Exit"
            exit
        end
    else
        puts "\e[H\e[2J"
        user_menu_loop
    end
end



def exit
    $quit = true
    puts "\e[H\e[2J"
    puts "<" * 100
    puts " " * 100
    puts "Thank you for using Midstream CLI Application!"
    puts " " * 100
    puts ">" * 100
end


