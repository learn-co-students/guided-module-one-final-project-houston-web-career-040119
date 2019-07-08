def welcome_page
    puts "\e[H\e[2J"
    puts "*" * 100
    puts " " * 100
    puts "Welcome to Midstream CLI Application!"
    puts " " * 100
    puts "*" * 100
    @prompt.select("Choose your option", %w(Login Register Exit))
end

def username
    @input_user = @prompt.ask("Please enter your username")
end

def password
    @input_pw = @prompt.mask("Please enter your password", mask: @dollar)
end

def new_password
    @input_npw1 = @prompt.mask("Please enter your new password", mask: @dollar)
    @input_npw2 = @prompt.mask("Please enter your new password again to confirm", mask: @dollar)
end

def user_menu
    puts "\e[H\e[2J"
    @prompt.select("Please choose an option", %w(Account\ Management Contracts Logout))
end

def account_management_menu
    @prompt.select("Please choose your option", %w(Account\ Info Change\ Password Previous))
end

def contracts_menu
    @prompt.select("Please choose an option", %w(All\ Contracts Future\ Contracts Create\ Contract\ w\ Purchaser Create\ Contract\ w\ Producer Previous))
end

def choose_contract
    @contract = @prompt.select("Please choose your contract:", %w(Producer\ Contracts Purchaser\ Contracts))
end
     
def choose_by_producer_name
    @producer = @prompt.select("Please choose your producer:", %w(BP Gazprom PeMex Vitol Shell))
end
     
def choose_pickup_location
    @location = @prompt.select("Please choose your location:", %w(Houston Rotterdam New\ Jersey Dallas Vladoska))
end

def all_pr_contracts
    MPrContract.all.each do |contract|
        if contract.midstream_id == Midstream.find_by(user_name: @input_user).id
        puts "Total price is #{contract.total_price}, pickup date is #{contract.pickup_date}"
        end
    end
end

def all_contracts
    puts "\e[H\e[2J"
    MPrContract.all.each do |contract|
        if contract.midstream_id == Midstream.find_by(user_name: @input_user).id
        puts "Total price is #{contract.total_price}, pickup date is #{contract.pickup_date}"
        end
    end

    MPuContract.all.each do |contract|
        if contract.midstream_id == Midstream.find_by(user_name: @input_user).id
        puts "Total price is #{contract.total_price}, delivery date is #{contract.delivery_date}"
        end
    end
end

def future_contracts
    puts "\e[H\e[2J"
    MPrContract.all.map do |contract|
        if contract.pickup_date > Time.now && contract.midstream_id == Midstream.find_by(user_name: @input_user).id
            puts "Total price is #{contract.total_price}, pickup date is #{contract.pickup_date}" 
        end
    end

    MPuContract.all.map do |contract|
        if contract.delivery_date > Time.now && contract.midstream_id == Midstream.find_by(user_name: @input_user).id
            puts "Total price is #{contract.total_price}, delivery date is #{contract.delivery_date}"
        end
    end
end

def all_contracts_arr
    @mpr = MPrContract.all.select do |contract|
        contract.midstream_id == Midstream.find_by(user_name: @input_user).id
    end

    @mpu = MPuContract.all.select do |contract|
        contract.midstream_id == Midstream.find_by(user_name: @input_user).id
    end
end

def future_contracts_arr
    @mprf = MPrContract.all.select do |contract|
        contract.pickup_date > Time.now && contract.midstream_id == Midstream.find_by(user_name: @input_user).id
    end

    @mpuf = MPuContract.all.select do |contract|
        contract.delivery_date > Time.now && contract.midstream_id == Midstream.find_by(user_name: @input_user).id
    end
end


def countdown(seconds)
    date1 = Time.now + seconds
    while Time.now < date1
      t = Time.at(date1.to_i - Time.now.to_i)
      puts t.strftime('%s')
      sleep 1
    end
end
