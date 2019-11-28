puts "Destroy previous Kitas"
Kindergarden.destroy_all
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


kindergardens = Kindergarden.create([{name: "Sunshine Kita", address: "Leopoldstraße 50, Berlin", language: "English-German", capacity: 200, email: "info@sunshine.de", phone: 050 47385949 },
          {name: "Meine Erste Kita", address: "Brandenburgische Straße 22, Berlin", language: "English-German", capacity: 84, email: "info@mek.de", phone: 050 28758789},
          {name: "Charlotte", address: "Genslerstraße 21, Berlin", language: "German", capacity: 120, email: "charlotte@charlottekita.de", phone: 050 73478346 },
          {name: "Tutti Amici", address: "Leopoldßtraße 82, Berlin", language: "Italian-German", capacity: 64, email: "info@tuttiamici.com", phone: 050 38974983},
          {name: "Le Tour Eiffel", address: "Holteistraße 18, Berlin", language: "French-German", capacity: 35, email: "letour@lte.de", phone: 050 79834224 },
          {name: "Detsky Sad Kita", address: "Weisbachstraße 1-4, Berlin", language: "Russian-German", capacity: 65, email: "info@detskysk.com", phone: 050 64872634},
          {name: "Stesti Kita", address: "Schulweg, Berlin", language: "Czech-German", capacity: 25, email: "info@stestikita.de", phone: 050 83275892 },
          {name: "Boldog Gyerekek Kita", address: "Lichtenberger Straße, Berlin", language: "Hungarian-German", capacity: 46, email: "info@bgk.de", phone: 050 },
          {name: "Happikizzu", address: "Jacobystraße 5-6, Berlin", language: "Japanese-German", capacity: 38, email: "hattori@happikizzu.de", phone: 050 },
          {name: "Szczescie", address: "Bornholmer Straße 2, Berlin", language: "Polish-German", capacity: 52, email: "info@polishkitaberlin.de", phone: 050 }]
    )
