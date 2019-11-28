puts "Destroy previous Kitas"
Kindergarden.destroy_all
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


kindergardens = Kindergarden.create([{name: "Sunshine Kita", address: "Leopoldstraße 50, Berlin", language: "English-German", capacity: 200, is_available: true},
          {name: "Meine Erste Kita", address: "Brandenburgische Straße 22, Berlin", language: "English-German", capacity: 84, is_available: true},
          {name: "Charlotte", address: "Genslerstraße 21, Berlin", language: "German", capacity: 120, is_available: false},
          {name: "Tutti Amici", address: "Leopoldßtraße 82, Berlin", language: "Italian-German", capacity: 64, is_available: true},
          {name: "Le Tour Eiffel", address: "Holteistraße 18, Berlin", language: "French-German", capacity: 35, is_available: true},
          {name: "Detsky Sad Kita", address: "Weisbachstraße 1-4, Berlin", language: "Russian-German", capacity: 65, is_available: false},
          {name: "Stesti Kita", address: "Schulweg, Berlin", language: "Czech-German", capacity: 25, is_available: false},
          {name: "Boldog Gyerekek Kita", address: "Lichtenberger Straße, Berlin", language: "Hungarian-German", capacity: 46, is_available: true},
          {name: "Happikizzu", address: "Jacobystraße 5-6, Berlin", language: "Japanese-German", capacity: 38, is_available: true},
          {name: "Szczescie", address: "Bornholmer Straße 2, Berlin", language: "Polish-German", capacity: 52, is_available: true}]
    )
