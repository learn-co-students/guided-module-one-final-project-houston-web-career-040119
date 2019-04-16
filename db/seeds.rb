#producer

  Producer.create(type_of_product:"Crude", amount_liftable:50000, location:"Houston",
    daily_production:100000, price:87, producer_name:"PeMex")

    Producer.create(type_of_product:"D6", amount_liftable:125000, location:"Rotterdam",
      daily_production:50000, price:90, producer_name:"BP")

    Producer.create(type_of_product:"Jet_Fuel", amount_liftable:75000, location:"New Jersey",
        daily_production:75000, price:77, producer_name:"Vitol")

      Producer.create(type_of_product:"Mazut", amount_liftable:25000, location:"Vladoska",
          daily_production:65000, price:66, producer_name:"Gazprom")

    Producer.create(type_of_product:"ULSD", amount_liftable:2000, location:"Dallas",
            daily_production:10000, price:105, producer_name:"Shell")

Midstream.create(rep_name:"Robert Fuentes", user_name:"rlfuentes", password:"123456")
