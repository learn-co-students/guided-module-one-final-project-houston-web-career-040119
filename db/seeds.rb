<<<<<<< HEAD
#purchaser:
Purchaser.create(purchaser_name: "Exxon Mobil", type_of_product: "Crude", amount_demand: 300000, location: "Baytown", price_per_unit: 80)

Purchaser.create(purchaser_name: "National Train", type_of_product: "D6", amount_demand: 120000, location: "New Orleans", price_per_unit: 96)

Purchaser.create(purchaser_name: "United Airline", type_of_product: "Jet Fuel", amount_demand: 125000, location: "Humble", price_per_unit: 86)

Purchaser.create(purchaser_name: "National Ship", type_of_product: "Mazut", amount_demand: 8000, location: "Gulft Coast", price_per_unit: 103)

Purchaser.create(purchaser_name: "Fedex", type_of_product: "ULSD", amount_demand: 200000, location: "Humble", price_per_unit: 126)

Purchaser.create(purchaser_name: "UPS", type_of_product: "ULSD", amount_demand: 230000, location: "Fort Worth", price_per_unit:126)

Purchaser.create(purchaser_name: "Flint Hill Resources", type_of_product: "Crude", amount_demand: 500000, location: "Corpus Christi", price_per_unit: 80)

#midstream:
Midstream.create(rep_name: "Robert Fuentes", user_name: "rlfuentes", password: "123456")


#mpucontracts


=======
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
>>>>>>> afc84cfaae9ab435bb9ee4af733a88d412ad2148
