def login_loop
    username
    if Midstream.find_by(user_name:@input_user) != nil
        password
        if Midstream.find_by(password:@input_pw) != nil
            mpucontracts
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
        @choice1 = @prompt.select("Choose your option", %w(Login Exit))
        if @choice1 == "Login"
            login_loop
        else
            exit
        end
    else
        password
        @name = @prompt.ask("Please enter your full name:")
        Midstream.create(rep_name: @name, user_name: @input_user, password: @input_pw)
        puts "User created, please login."
        login_loop
    end
end

def exit
    puts "\e[H\e[2J"
    puts "<" * 100
    puts " " * 100
    puts "Thank you for using Midstream CLI Application!"
    puts " " * 100
    puts ">" * 100
end

