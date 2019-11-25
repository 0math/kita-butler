puts "Destroy previous Kitas"
Kita.destroy_all
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Kitas = [{name: "Sunshine Kita", address: "Leopoldstraße 50, Berlin", language: "English-German", capacity: 200},
          {name: "Meine Erste Kita", address: "Brandenburgische Straße 22, Berlin", language: "English-German", capacity: 84},
          {name: "Charlotte", address: "Genslerstraße 21, Berlin", language: "German", capacity: 120},
          {name: "Tutti Amici", address: "Leopoldßtraße 82, Berlin", language: "Italian-German", capacity: 64},
          {name: "Le Tour Eiffel", address: "Holteistraße 18, Berlin", language: "French-German", capacity: 35},
          {name: "Detsky Sad Kita", address: "Weisbachstraße 1-4, Berlin", language: "Russian-German", capacity: 65},
          {name: "Stesti Kita", address: "Schulweg, Berlin", language: "Czech-German", capacity: 25},
          {name: "Boldog Gyerekek Kita", address: "Lichtenberger Straße, Berlin", language: "Hungarian-German", capacity: 46},
          {name: "Happikizzu", address: "Jacobystraße 5-6, Berlin", language: "Japanese-German", capacity: 38},
          {name: "Szczescie", address: "Bornholmer Straße 2, Berlin", language: "Polish-German", capacity: 52}]
