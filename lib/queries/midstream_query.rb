def account_info
    puts "\e[H\e[2J"
    all_contracts_arr
    future_contracts_arr
    @user = Midstream.find_by(user_name: @input_user)
    puts "Welcome #{@user.rep_name}!
            Your user name is #{@input_user}
            You have: #{@mpr.length} contracts with producers,
                      #{@mpu.length} contracts with purchasers
                      #{@mprf.length} contracts with porducers need to be pick up,
                      #{@mpuf.length} contracts with purchasers need to be delivered."
end 